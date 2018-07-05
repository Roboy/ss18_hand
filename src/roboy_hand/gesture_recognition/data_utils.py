import numpy as np
from skimage import io
import matplotlib.pyplot as plt

def normalize(input):
    return (input - np.average(input)) / np.std(input)

def normalize_channelwise(input):
    r = input[0, :, :]
    g = input[1, :, :]
    b = input[2, :, :]

    r = (r - np.sum(r)) / np.std(r)
    g = (g - np.sum(g)) / np.std(g)
    b = (b - np.sum(b)) / np.std(b)

    return np.stack((r, g, b))

img = io.imread("C:\\Users\\Bilal\\git\\gesture_recog_leap\\kinect_leap_dataset\\acquisitions\\P1\\G1\\9_rgb.png")
plt.imshow(img)

img = normalize(img)
plt.imshow(img)

#img = normalize_channelwise(img)
#plt.imshow(img)

plt.show()
