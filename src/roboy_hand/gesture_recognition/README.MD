# Gesture Recognition
Roboy wishes to understand the gestures.


## About
This repository consists the scripts for training different architectures.


## Getting Started
### Prequisites
The scripts are written in Jupyter Notebook. I highly recommend you to install [Anaconda](https://www.anaconda.com/download/) for Python 3.

First install required packages.
* `pip3 install numpy=1.14.5`
* `pip3 install scikit-image=0.13.0`
* `pip3 install scikit-learn=0.19.1`

You also need Jupyter Notebook. Follow the installing instructions from here: http://jupyter.readthedocs.io/en/latest/install.html

Finally, install PyTorch version 0.4.0.
https://pytorch.org/

### How to setup

##### 1. Download the dataset
Go to [Hand Gesture Dataset website](http://lttm.dei.unipd.it/downloads/gesture/#kinect_leap) and download the Microsoft Kinect and Leap Motion Dataset or [click here.](http://lttm.dei.unipd.it/downloads/gesture/kinect_leap/data/kinect_leap_dataset.zip)
##### 2. Extract it to same folder which has training scripts.
You should read **readme** and **gestures** files after extracting it for more details about the dataset and gestures.
##### 3. Make sure that you can run PyTorch with NVIDIA CUDA libraries.
Without GPU, training process may take a long time.

```sh
import torch
if torch.cuda.is_available():
    print("You can use GPU!")
else:
    print("You cant use GPU!")
```
### About Scripts
The naming scheme follow this order:
```sh
leap_[rgb|depth]_train_[Model Architecture][_preprocessed]?
```
* [rgb|depth] indicates whether training images are RGB or depth images.
* [Model Architecture] should be one of the architecture in **models** folder (e.g. vgg, resnet).
* [_preprocessed] is an optional tag. If there is preprocessed tag, it means that every image is horizontally mirrorred and all the dataset is normalized by the following formula. 
![equation](https://latex.codecogs.com/gif.download?X_%7Bnew%7D%3D%20%5Cfrac%7BX_%7Bold%7D%20-%20%5Cmu%7D%7B%5Csigma%7D%5Cnewline%20%5Cmu%3A%20%5Ctext%7BMean%20value%20of%20the%20dataset%7D%5Cnewline%20%5Csigma%3A%20%5Ctext%7BStandard%20deviation%20of%20the%20dataset%7D)

When your the script finishes training it will save the trained model under **saved_models** folder with the following naming scheme:
```sh
[Model Architecture]_[rgb|depth]_[Number of Epochs]_[YYYY-MM-DD]_[HH-MM-SS].model
```
E.g. `resnet_rgb_100_2018-07-04_06-59-19.model` This means there is a trained **ResNet** model with **100** epochs using **RGB** dataset and the train finished at **04.07.2018 06:59:19**.