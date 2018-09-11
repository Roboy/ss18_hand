import sys
import os
import glob

root_path = os.path.join(os.getcwd(), 'kinect_leap_dataset', 'acquisitions')
p_id = ['P1', 'P2', 'P3', 'P4', 'P5', 'P6', 'P7', 'P8', 'P9', 'P10', 'P11', 'P12', 'P13', 'P14']
g_id = ['G1', 'G2', 'G3', 'G4', 'G5', 'G6', 'G7', 'G8', 'G9', 'G10']

dest_path = os.path.join(os.path.dirname(os.getcwd()), 'rgb_kinect_leap_dataset')
os.makedirs(dest_path)

for p in p_id:
    for g in g_id:
        path = os.path.join(root_path, p, g)
        src_image_names = glob.glob(os.path.join(path, '*rgb.png'))
        for i in range(len(src_image_names)):
            os.rename(src_image_names[i], os.path.join(dest_path, p + '_' + g + '_' + str(i) + '.png'))
