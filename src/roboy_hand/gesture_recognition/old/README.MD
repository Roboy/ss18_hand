# Gesture Recognition Old
This repository contains two folders.
* Real dataset
* Toy dataset

In **real_dataset** folder you will find the very first scripts that we used for training. Even though training, validation and test accuracies are high and losses are low, models do not work in real world camera inputs. Main problems are
* Resizing images. For training we resize images to 64x64, that makes hand very very small e.g. 10 pixels.
* There are no hand labels. We expect networks to understand hand and hand gestures from input.

In **toy_dataset** folder we used different dataset. This dataset has hand-centered images and in every image hand covers most of the image. This dataset gave us low accuracy on test images. Main problems are
* Dataset is unbalanced. After balancing, number of training samples are dramatically reduced.
* Test datas and training datas look different.