# Gesture Recognition with Real Dataset

## About
This repository contains the scripts for training different architectures to help Roboy understand the meaning of gestures.

## Getting Started
### Prequisites
The scripts are written in Jupyter Notebook and Python 3.6. I highly recommend you to install [Anaconda](https://www.anaconda.com/download/) for Python 3.6.

First install required packages.

> If you will use Anaconda, install the extra packages below via `conda` not `pip3`.

* `$ pip3 install numpy==1.14.5`
* `$ pip3 install scikit-image==0.13.0`
* `$ pip3 install scikit-learn==0.19.1`
* `$ pip3 install opencv-contrib-python`

You also need Jupyter Notebook. Follow the installing instructions from here: http://jupyter.readthedocs.io/en/latest/install.html

Finally, install PyTorch version 0.4.0.
https://pytorch.org/

### How to setup

### Warning
- The notebooks which trains LeNet (`leap_train_depth` and `leap_rgb_train` files) are a little old. You may need to tweak dataset path to run these files.
- `data_utils.py` contains preprocessing methods.
- The purpose of `live_feed` notebook is to capture webcam and feed any trained network with it and see the results. Currently, this is under work and not fully implemented.

##### 1. Download the dataset
Go to [Hand Gesture Dataset website](http://lttm.dei.unipd.it/downloads/gesture/#kinect_leap) and download the Microsoft Kinect and Leap Motion Dataset or [click here.](http://lttm.dei.unipd.it/downloads/gesture/kinect_leap/data/kinect_leap_dataset.zip)
##### 2. Extract it to same folder which has training scripts.
You should read **readme** and **gestures** files after extracting it for more details about the dataset and gestures.
##### 3. Make sure that you can run PyTorch with NVIDIA CUDA libraries.
Without GPU, training process may take a long time.

```python
import torch
if torch.cuda.is_available():
    print("You can use GPU!")
else:
    print("You can not use GPU!")
```
### About Scripts
The naming scheme follow this order:
```sh
leap_[rgb|depth]_train_[Model Architecture][_preprocessed]?
```
* [rgb|depth] indicates whether training images are RGB or depth images.
* [Model Architecture] should be one of the architecture in **models** folder (e.g. vgg, resnet).
* [_preprocessed] is an optional tag. If there is preprocessed tag, it means that every image is horizontally mirrorred and all the dataset is normalized by the following formula.

![equation](https://latex.codecogs.com/gif.latex?X_{new}&space;=&space;\frac{X_{old}-\mu}{\sigma}\newline&space;\mu:\text{Mean&space;value&space;of&space;the&space;dataset.}\newline&space;\sigma:\text{Standard&space;deviation&space;of&space;the&space;dataset.})

When your the script finishes training it will save the trained model under **saved_models** folder with the following naming scheme:
```sh
[Model Architecture]_[rgb|depth]_[Number of Epochs]_[YYYY-MM-DD]_[HH-MM-SS].model
```
E.g. `resnet_rgb_100_2018-07-04_06-59-19.model` This means there is a trained **ResNet** model with **100** epochs using **RGB** dataset and the train finished at **04.07.2018 06:59:19**.
