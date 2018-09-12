# Gesture Recognition
This repository contains three folders.
* old
* run
* train

In **old** folder you will find the very first scripts that we used for training. Even though training, validation and test accuracy is high and their losses are low, this does not work in real world camera inputs. The main problems are
* Resizing images. To traing we resize images to 64x64, that makes hand very very small e.g. 10 pixels.
* Hand is not localized. We don't segment hand beforehand and expect our network to understand without it.

In **run** folder you will find the necessary scripts to run trained network to detect hand gestures and sending them to another ROS topic. Also, this folder contains model checkpoints and frozen graph.

In **train** folder you will find the necessary scripts to train a neural network to detect hand gestures.

You can see detailed explanations in corresponding folders. 

# References
https://github.com/victordibia/handtracking

https://pythonprogramming.net/training-custom-objects-tensorflow-object-detection-api-tutorial/

G. Marin, F. Dominio, P. Zanuttigh, "Hand gesture recognition with Leap Motion and Kinect devices", IEEE International Conference on Image Processing (ICIP), Paris, France, 2014

G. Marin, F. Dominio, P. Zanuttigh, "Hand Gesture Recognition with Jointly Calibrated Leap Motion and Depth Sensor", Multimedia Tools and Applications, 2015