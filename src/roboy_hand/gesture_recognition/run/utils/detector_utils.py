# Utilities for object detector.
import cv2
import numpy as np
import sys
import tensorflow as tf
from threading import Thread
from utils import label_map_util
import os

bColors = {'HEADER': '\033[95m', 'OKBLUE': '\033[94m', 'OKGREEN': '\033[92m', 'WARNING': '\033[93m', 'FAIL': '\033[91m',
           'ENDC': '\033[0m', 'BOLD': '\033[1m', 'UNDERLINE': '\033[4m', 'RED': '\033[31m', 'GREEN': '\033[32m',
           'YELLOW': '\033[33m', 'BLUE': '\033[34m'}

sys.path.append('..')

# Path of the exported frozen model
FROZEN_GRAPH_PATH = os.path.join(os.getcwd(), 'frozen_graph', 'frozen_inference_graph.pb')

# List of the strings that is used to add correct label for each box.
PATH_TO_LABELS = os.path.join(os.getcwd(), 'data', 'hands_label_map.pbtxt')

# Number of classes
NUM_CLASSES = 10

# Load label map and arrange categories
label_map = label_map_util.load_labelmap(PATH_TO_LABELS)
categories = label_map_util.convert_label_map_to_categories(label_map, max_num_classes=NUM_CLASSES,
                                                            use_display_name=True)
category_index = label_map_util.create_category_index(categories)

# Predefined class labels
LABELS = ['fist', 'one', 'pinky', 'loser', 'two', 'three', 'horn', 'rockNroll', 'five', 'ok']

# Different color for each gesture
colors = [(85, 239, 196), (116, 185, 255), (162, 155, 254), (9, 132, 227), (108, 92, 231), (250, 177, 160),
          (255, 234, 167), (214, 48, 49), (232, 67, 147), (99, 110, 114)]


def print_log_colorful(color=bColors['WARNING'], str=''):
    print(color + str + bColors['ENDC'])


# Load a frozen infrerence graph into memory
def load_inference_graph():
    # Load frozen tensorflow model into memory
    print_log_colorful(bColors['OKBLUE'], 'Loading frozen hand graph into memory.')

    with tf.gfile.GFile(FROZEN_GRAPH_PATH, 'rb') as f:
        restored_graph_def = tf.GraphDef()
        restored_graph_def.ParseFromString(f.read())

    with tf.Graph().as_default() as graph:
        tf.import_graph_def(restored_graph_def, input_map=None, return_elements=None, name='')
        sess = tf.Session(graph=graph)

    print_log_colorful(bColors['OKGREEN'], 'Hand inference graph has been loaded.')

    return graph, sess


# Draw the detected bounding boxes on the images
def draw_box_on_image(num_hands_detect, score_thresh, scores, boxes, im_width, im_height, image_np, classes_str):
    for i in range(num_hands_detect):
        if scores[i] > score_thresh:
            (left, right, top, bottom) = (
                boxes[i][1] * im_width, boxes[i][3] * im_width, boxes[i][0] * im_height, boxes[i][2] * im_height)
            left -= 10
            right += 10
            top -= 10
            bottom += 10
            if left < 0:
                left = 0
            if right >= im_width:
                right = im_width - 1
            if top < 0:
                top = 0
            if bottom >= im_height:
                bottom = im_height - 1

            p1 = (int(left), int(top))
            p2 = (int(right), int(bottom))

            # Draw bounding box
            cv2.rectangle(image_np, p1, p2, colors[LABELS.index(classes_str[i])], 5, 1)

            res = format(scores[i], '.2%')

            class_string = classes_str[i] + ', id: ' + str(LABELS.index(classes_str[i]))

            # Draw class name
            cv2.putText(image_np, class_string, (int(left / 2 + right / 2), int(0.8 * top + 0.2 * bottom)),
                        cv2.FONT_HERSHEY_SIMPLEX, 0.75, (255, 0, 0), 2)

            # Draw accuracy
            cv2.putText(image_np, res, (int(left / 2 + right / 2), int(0.8 * top + 0.2 * bottom) + 20),
                        cv2.FONT_HERSHEY_SIMPLEX, 0.75, (77, 255, 9), 2)


# Show fps value on image.
def draw_fps_on_image(fps, image_np):
    cv2.putText(image_np, fps, (0, 20), cv2.FONT_HERSHEY_SIMPLEX, 0.75, (77, 255, 9), 2)


# Actual detection .. generate scores and bounding boxes given an image
def detect_objects(image_np, detection_graph, sess):
    # Definite input and output Tensors for detection_graph
    image_tensor = detection_graph.get_tensor_by_name('image_tensor:0')

    # Each box represents a part of the image where a particular object was detected.
    detection_boxes = detection_graph.get_tensor_by_name('detection_boxes:0')

    # Each score represent how level of confidence for each of the objects.
    # Score is shown on the result image, together with the class label.
    detection_scores = detection_graph.get_tensor_by_name('detection_scores:0')
    detection_classes = detection_graph.get_tensor_by_name('detection_classes:0')
    num_detections = detection_graph.get_tensor_by_name('num_detections:0')

    image_np_expanded = np.expand_dims(image_np, axis=0)

    (boxes, scores, classes, num) = sess.run([detection_boxes, detection_scores, detection_classes, num_detections],
                                             feed_dict={image_tensor: image_np_expanded})

    classes_str = []
    for key in np.squeeze(classes):
        classes_str.append(category_index[key]['name'])

    return np.squeeze(boxes), np.squeeze(scores), classes_str