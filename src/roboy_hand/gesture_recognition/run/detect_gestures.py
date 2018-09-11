import cv2
import datetime
import rospy
import tensorflow as tf
from std_msgs.msg import Int64
from utils import detector_utils as detector_utils
import os

# Display segmented camera output
DISPLAY = True

# Display FPS
SHOW_FPS = True

# Score threshold for showing bounding boxes, between (0, 1)
SCORE_THRESHOLD = 0.67

# Gesture sending threshold, should be bigger than 1, type: int
GESTURE_SEND_THRESHOLD = 30

# Topic name
ROS_PUBLISHER_NAME = 'gesture_recognition'

# To control publishing frequency
# Until waiting time finishes, topic will not send gesture id
WAITING_TIME = 5  # seconds

# Sets CPU priority
# In Linux systems -20 highest priority, 0 normal, 20 lowest
PRIORITY = -20
os.nice(PRIORITY)


# Check all the elements in a list is the same.
def is_all_equal(lst):
    return not lst or lst.count(lst[0]) == len(lst)


def talker():
    # Variables for FPS calculation
    start_time = datetime.datetime.now()
    num_frames = 0

    im_width, im_height = (cap.get(3), cap.get(4))
    # Max number of hands we want to detect/track
    num_hands_detect = 1

    rospy.loginfo('Initializing and starting ' + ROS_PUBLISHER_NAME + ' topic.')
    detector_utils.print_log_colorful(detector_utils.bColors['OKBLUE'],
                                      'Initializing and starting ' + ROS_PUBLISHER_NAME + ' topic.')

    # ROS publisher
    publisher = rospy.Publisher(ROS_PUBLISHER_NAME, Int64, queue_size=10)

    # Initialization
    rospy.init_node('talker')

    # Communication rate
    rate = rospy.Rate(60)  # 60 Hz = 30 FPS

    # Empty queue for message publish logic
    gesture_list = []

    # Initialize variable
    # To pause publishing
    last_publishing_time = None

    # To log after the sleeping time
    report_waking_up = False

    rospy.loginfo(ROS_PUBLISHER_NAME + ' topic has been initialized.')
    detector_utils.print_log_colorful(detector_utils.bColors['OKGREEN'],
                                      ROS_PUBLISHER_NAME + ' topic has been initialized.')

    detector_utils.print_log_colorful(detector_utils.bColors['RED'], 'Press ESC to exit!')

    while not rospy.is_shutdown():

        # Read image from camera
        ret, image_np = cap.read()
        if not ret:
            detector_utils.print_log_colorful(detector_utils.bColors['RED'],
                                              'No image received from camera or video file has been finished!')
            detector_utils.print_log_colorful(detector_utils.bColors['WARNING'],
                                              'If no image received from camera, check availability of the camera.')
            detector_utils.print_log_colorful(detector_utils.bColors['WARNING'],
                                              'It can be busy because of another application or disconnected.')
            break
        # OpenCV reads image as (B, G, R), convert it to (R, G, B)
        image_np = cv2.cvtColor(image_np, cv2.COLOR_BGR2RGB)

        # Actual detection
        boxes, scores, classes = detector_utils.detect_objects(image_np, detection_graph, sess)

        # Draw bounding boxes
        detector_utils.draw_box_on_image(num_hands_detect, SCORE_THRESHOLD, scores, boxes, im_width, im_height,
                                         image_np, classes)

        # Calculate frames per second (FPS)
        num_frames += 1
        elapsed_time = (datetime.datetime.now() - start_time).total_seconds()
        fps = num_frames / elapsed_time

        if DISPLAY:
            # Display FPS on frame
            if SHOW_FPS:
                detector_utils.draw_fps_on_image('FPS : ' + str(int(fps)), image_np)

            cv2.imshow('Single Threaded Detection', cv2.cvtColor(image_np, cv2.COLOR_RGB2BGR))

            # ESC is equal to 27.
            if cv2.waitKey(1) == 27:
                rospy.logfatal('Gesture recognition has been shut down by the user.')
                detector_utils.print_log_colorful(detector_utils.bColors['RED'],
                                                  'Gesture recognition has been shut down by the user.')
                cv2.destroyAllWindows()
                break
        else:
            print('Frames processed: ', num_frames, 'Elapsed time: ', elapsed_time, 'FPS: ', str(int(fps)))

        # Wait simulation to perform the gesture
        if last_publishing_time is not None and (
                datetime.datetime.now() - last_publishing_time).total_seconds() < WAITING_TIME:
            continue

        if report_waking_up:
            rospy.loginfo('Gesture recognition has woken up.')
            detector_utils.print_log_colorful(detector_utils.bColors['OKGREEN'], 'Gesture recognition has woken up.')
            report_waking_up = False

        # If the prediction score is higher than threshold
        if scores[0] > SCORE_THRESHOLD:
            # Find the index of the predicted gesture
            result = (detector_utils.LABELS.index(classes[0]))
            gesture_list.append(result)

            # If number of found gestures are more than GESTURE_SEND_THRESHOLD
            if len(gesture_list) > GESTURE_SEND_THRESHOLD - 1:
                # If all the gesture are the same
                if is_all_equal(gesture_list):
                    rospy.loginfo(
                        'Sending gesture: (id: ' + str(result) + ', label: ' + str(
                            detector_utils.LABELS[result]) + ').')
                    detector_utils.print_log_colorful(detector_utils.bColors['WARNING'],
                                                      'Sending gesture: (id: ' + str(result) + ', label: ' + str(
                                                          detector_utils.LABELS[result]) + ').')
                    # Publish gesture ID
                    publisher.publish(result)
                    rate.sleep()
                    rospy.loginfo('Sleeping for ' + str(WAITING_TIME) + ' seconds.')
                    detector_utils.print_log_colorful(detector_utils.bColors['WARNING'],
                                                      'Sleeping for ' + str(WAITING_TIME) + ' seconds.')

                    report_waking_up = True
                    last_publishing_time = datetime.datetime.now()
                # Empty the list
                gesture_list = []


if __name__ == '__main__':
    detection_graph, sess = detector_utils.load_inference_graph()

    # -1 means first available camera
    cap = cv2.VideoCapture(-1)
    # cap = cv2.VideoCapture('/home/bilal/Downloads/heather2.mp4')

    try:
        talker()
    except rospy.ROSInterruptException:
        pass
