import numpy as np
from skimage import io
import matplotlib.pyplot as plt
from scipy.ndimage.interpolation import rotate

'''Data normalization with substracting mean
   and dividing by standard deviation'''
def normalize(data):
    mean = np.mean(data)
    std = np.std(data)
    normalized_data = (data - mean) / std
    return mean, std, normalized_data

def normalizeWithValues(data, mean, std):
    return (data - mean) / std

def normalizeMinMax(data):
    data -= np.min(data)
    return data / np.max(data)

'''Rotate an image with angles from 0 up to 360'''


def createRotatedImages(image, angle):
    images = []
    for i in range(1, int(360 / angle)):
        current_angle = i * angle
        rotated_image = rotate(input=image, angle=current_angle, reshape=False)
        images.append(rotated_image)

    return images


'''Create vertically and horizontally mirrored images'''


def createMirrorImages(image):
    mirror_images = []

    ud_image = np.flipud(image)
    lr_image = np.fliplr(image)

    mirror_images.append(ud_image)
    mirror_images.append(lr_image)

    return mirror_images

def createAugmentedImages(image, rotation_angle, rotate=True, mirror=True):
    augmented_images = []

    all_images = []
    all_images.append(image)
    if rotate == True:
        rotated_images = createRotatedImages(image, rotation_angle)
        all_images.extend(rotated_images)

    mirror_images = []
    if mirror == True:
        for i in range(int(np.ceil(len(all_images) / 2))):
            mirrored = createMirrorImages(all_images[i])
            mirror_images.extend(mirrored)

        all_images.extend(mirror_images)

    augmented_images.extend(all_images)

    return augmented_images