# Gesture Recognition Old
This repository contains two folders.
* Real dataset
* Toy dataset

In **real_dataset** folder you will find the very first scripts that we used for training. Even though training, validation and test accuracy is high and their losses are low, this does not work in real world camera inputs. The main problems are
* Resizing images. To traing we resize images to 64x64, that makes hand very very small e.g. 10 pixels.
* Hand is not localized. We don't segment hand beforehand and expect our network to understand without it.

In **toy_dataset** folder you will find scripts which uses different dataset. Main difference of this dataset is this dataset has hand-centered images and hands are relatively has more ratio over background. This dataset gave us low accuracy on test images. The main problems are
* The dataset is unbalanced. After balancing operation number of training samples are dramatically reduced.
* Test dataset and training dataset looks different.