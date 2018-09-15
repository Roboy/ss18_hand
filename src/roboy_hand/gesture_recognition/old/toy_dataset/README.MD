# Gesture Recognition with Toy Dataset

## About
This repository contains the scripts for training and testing to understand hand classification better.

## Getting Started

### Prequisites
Scripts are written in Jupyter Notebook and Python 3.6. I highly recommend you to install [Anaconda](https://www.anaconda.com/download/) for Python 3.6.

First install required packages.

> If you will use Anaconda, install extra packages below via `conda` not `pip3`.

* `$ pip3 install numpy==1.14.5`
* `$ pip3 install scikit-image==0.13.0`
* `$ pip3 install scikit-learn==0.19.1`
* `$ pip3 install opencv-contrib-python`

You also need Jupyter Notebook. Follow installing instructions from here: http://jupyter.readthedocs.io/en/latest/install.html

Finally, install PyTorch version 0.4.0.
https://pytorch.org/

### How to setup

##### 1. Download dataset
Go to [website](http://www.idiap.ch/resource/gestures/), then download train and test datasets of **Sebastien Marcel Static Hand Posture Database** or [click here](http://www.idiap.ch/resource/gestures/data/shp_marcel_train.tar.gz) and [click here.](http://www.idiap.ch/resource/gestures/data/shp_marcel_test.tar.gz) 

##### 2. Extract it to same folder which has training scripts.
**Marcel-Train** and **Marcel-Test** folder should be in the same folder with scripts.

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
toy_[gray|rgb]
```
* [rgb|rgb] indicates whether training images are RGB or gray-scale images.

When script finishes training it will save trained model under **saved_models** folder with the following naming scheme:
```sh
[Model Architecture]_[rgb|gray]_[Number of Epochs]_[YYYY-MM-DD]_[HH-MM-SS].model
```
E.g. `resnet_rgb_100_2018-07-04_06-59-19.model` This means there is a trained **ResNet** model with **100** epochs using **RGB** dataset and training finished at **04.07.2018 06:59:19**.