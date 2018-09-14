# Gesture Recognition Training

## About
This repository contains the necessary files for training **S**ingle **S**hot Multibox **D**etector (SSD) for hand gesture recognition.

## Getting Started
### Prequisites
I highly recommend you to install [Anaconda](https://www.anaconda.com/download/) for Python 2.7.

First install required packages.
* `$ pip install Pillow==5.1.0`
* `$ pip install tensorflow-gpu==1.4.1`
* `$ pip install pandas==0.23.0`

## How to setup

### 0. Tensorflow Object Detection API
Please follow the guide on installing [Tensorflow and Tensorflow Object Detection API](https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/installation.md)

### 1. Download the dataset
Go to [Hand Gesture Dataset website](http://lttm.dei.unipd.it/downloads/gesture/#kinect_leap) and download the Microsoft Kinect and Leap Motion Dataset or [click here.](http://lttm.dei.unipd.it/downloads/gesture/kinect_leap/data/kinect_leap_dataset.zip)

### 2. Extract it to same folder which has scripts.
First, extract the dataset and the labels.
Then, run the following scripts in the following order:
```bash
$ python get_rgb_images_from_kinect_dataset.py
$ python clear_dataset.py
$ python xml_to_csv.py
$ python generate_train_tfrecord.py --csv_input=data/train_labels.csv --output_path=data/train.record
$ python generate_test_tfrecord.py --csv_input=data/test_labels.csv --output_path=data/test.record
```

### About Scripts
* `get_rgb_images_from_kinect_dataset.py` gets the RGB images from the dataset and puts all of them in a sinle directory.
* `clean_dataset.py` splits dataset (80% training and 20% test) and puts labels and images in their corresponding directories.
* `xml_to_csv.py` combines all xml files into csv file for training and test individually.
* `generate_train_tfrecord.py` generates tfrecord file for training.
* `generate_test_tfrecord` generates tfrecord file for test.

## Training
### 1. Folder tree should be like below.
```bash
├── clean_dataset.py
├── data
│   ├── hands_label_map.pbtxt
│   ├── test_labels.csv
│   ├── test.record
│   ├── train_labels.csv
│   └── train.record
├── generate_test_tfrecord.py
├── generate_train_tfrecord.py
├── get_rgb_images_from_kinect_dataset.py
├── images
│   ├── test
│   │   ├── P10_G10_0.png
│   │   ├── P10_G10_0.xml
│   │   ├── ...
│   │   └── P9_G9_9.xml
│   └── train
│       ├── P10_G10_1.png
│       ├── P10_G10_1.xml
│       ├── ...
│       └── P9_G9_8.xml
├── training
│   └── ssd_mobilenet_v1_coco.config
└── xml_to_csv.py
```

### 2. Setting up configs
Tensorflow Object Detection API has more than a dozen pre-trained models with checkpoint files and configuraion files available. Check the [link](https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/detection_model_zoo.md) for detailed info.

I used MobileNet, using the following [checkpoint](download.tensorflow.org/models/object_detection/ssd_mobilenet_v1_coco_11_06_2017.tar.gz) and configuration file.
Extract the `ssd_mobilenet_v1_coco_11_06_2017.tar.gz` in the `models/research/object_detection` directory.

You must change the following parameters in the **configuration file**:
* Under `model`,
    * `fine_tune_checkpoint`
* Under `train_input_reader`,
    * `input_path`
    * `label_map_path`
* Under `eval_input_reader`,
    * `input_path`
    * `label_map_path`

If you have errors related to VRAM capacity, you may reduce the batch size in config file.
* Under `train_config`,
    * `batch_size`

### 3. Train now!
Go to `models/research/object_detection/legacy` and type (fit to your paths)
```bash
$ python train.py --logtostderr --train_dir="gesture_recognition/train/training/" --pipeline_config_path="gesture_recognition/train/training/ssd_mobilenet_v1_coco.config"
```

#### Warning
If you have error related to `tf.contrib.data.parallel_interleave` please do the changes in this [link.](https://github.com/tensorflow/models/issues/3432#issuecomment-405680652)

### 4. Export the trained model
Go to `models/research/object_detection` and type
```bash
$ python export_inference_graph.py --input_type image_tensor --pipeline_config_path "training/ssd_mobilenet_v1_coco.config" --trained_checkpoint_prefix "training/model.ckpt-4499" --output_directory "/home/bilal/gesture_recognition"
```
