# ss18_hand
Simulation and control of Roboy's hand model and gesture recognition

### YOU CAN:
  - control the hand model by directly publishing joints angles to rostopic.
  - let the hand model mimic arbitrary hand movement with Leap Motion.
  - train neural network to recognize gestures (see [gesture_recognition]).

# Here begins the story:
## Installation
This project is built on Ubuntu 16.04. 
It is based on [ROS Kinetic]. If you don't have it yet, install it.
#### 1. Clone the project:
```sh
$ git clone https://github.com/Roboy/ss18_hand.git
$ git submodule init
$ git submodule update
```
#### 2. Install Leap Motion SDK
Install the version for Linux: https://developer.leapmotion.com/sdk/v2

## Build the project
```sh
$ cd /path/to/ss18_hand
$ catkin_make
$ source devel/setup.bash	# add this to your ~/.bashrc
```
## Play with it
##### 1. Execute gestures with predefined joint angles
There are some .bash files in the repository ss18_hand with predefined joint angles for certain gestures. To use it, you need to:
- Launch the hand model
```sh
$ roslaunch roboy_hand LeftHand.launch 
```
- Start another terminal and source the .bash file, e.g.:
```sh
$ source close_hand.bash 
```

##### 2. Mimic gesture with Leap Motion
- Start Leap Core Service
```sh
$ sudo leapd
```
- Launch the hand model
```sh
$ roslaunch roboy_hand LeftHand.launch 
```
- Start detecting joints
```sh
$ rosrun leap_motion sender.py
```
- See the detected joints angles
```sh
$ rostopic echo /roboy/middleware/FingerCommand 
```



   [gesture_recognition]: <https://github.com/Roboy/ss18_hand/tree/devel/src/roboy_hand/gesture_recognition>
   [ROS Kinetic]: <http://wiki.ros.org/kinetic/Installation>