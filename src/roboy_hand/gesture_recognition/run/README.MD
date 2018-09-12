# Gesture Recognition Run

## About
This repository contains the necessary files to run previously trained **SSD**.

## Getting Started
### Prequisites
In order to run the scripts with **ROS Kinetic**, you must use Python 2.7. I highly recommend you to install [Anaconda](https://www.anaconda.com/download/) for Python 2.7.

Please follow the instructions to install [ROS Kinetic.](wiki.ros.org/kinetic/Installation/)
Please follow the guide on installing [Tensorflow and Tensorflow Object Detection API](https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/installation.md)

First install required packages.
* `pip install rospy`
* `pip install opencv-contrib-python`
* `pip install numpy==1.14.5`
* `pip install tensorflow-gpu==1.4.1`
    * If you want to run it with CPU `pip install tensorflow==1.4.1`

## How to run

### 1. Start roscore
```bash
$ roscore&
```

### 2. Set up specific camera
The script needs a camera to work with. If you have one camera you do not have to change anything.
However, if you have more than one camera:
#### 2.1 Check devices
```bash
$ ls -ltrh /dev/video*
```
You will see output like
`crw-rw----+ 1 root video 81, 0 Eyl  4 15:51 /dev/video0`

#### 2.2 Edit code to work with specific camera
Open `detect_gesture.py` and change the number to your device number. In our case put **0**, because our output is `/dev/video0`

```python
cap = cv2.VideoCapture(0) # cap = cv2.VideoCapture(-1)
```

### 3. Run!
```bash
$ python detect_gestures.py
```

### About Scripts
* `detect_gestures.py` creates a ROS publisher and detects gestures.
* `utils/detector_utils.py` draws rectangle and text on found gestures.
* `utils/label_map_util.py` contains label map utility functions.
