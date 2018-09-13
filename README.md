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
$ export CONFIG_PATH="PATH_TO_THIS_RESPOSITORY/ss18_hand/src/roboy_moveit_configs" # add this to your ~/.bashrc
```
And link the hand model to Gazebo:
```sh
$ ln -s PATH_TO_THIS_RESPOSITORY/ss18_hand/src/roboy_models/left_hand ~/.gazebo/models/left_hand
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
#### 3. Execute gesture with look-up-table
- Launch the gesture_execution.launch file to start the necessary nodes
```sh
$ roslaunch roboy_hand gesture_execution.launch model_name:=left_hand
```
to terminate it: press ctrl+c, q, enter, y, enter
- Open a new terminal and start rviz for visualization of the model
```sh
$ rviz
```
- If you have started the gesture recognition program, the detected gesture will be actuated on the model. (to run the neural network, follow the steps [here])
- Or you can also publish message to the ROS topic /gesture_recognition to execute gesture from the look-up-table
```sh
$ rostopic pub /gesture_recognition std_msgs/Int64 "data: 0" 
```
for now we have gesture id from 0 to 9 corresponding to gesture 1 to 10 in the picture below:
<p align="center">
  ![gestures](images/gestures.png?raw=true)
  
</p>

# Further Info
For more info on the project visit our Confluence Page:
https://devanthro.atlassian.net/wiki/spaces/SS18/pages/235601936/Hand

   [gesture_recognition]: <https://github.com/Roboy/ss18_hand/tree/devel/src/roboy_hand/gesture_recognition>
   [ROS Kinetic]: <http://wiki.ros.org/kinetic/Installation>
   [here]: <https://github.com/Roboy/ss18_hand/tree/devel/src/roboy_hand/gesture_recognition/run>
