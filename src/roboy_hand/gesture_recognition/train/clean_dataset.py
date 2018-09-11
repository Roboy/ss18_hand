import os

p_id = ['P1', 'P2', 'P3', 'P4', 'P5', 'P6', 'P7', 'P8', 'P9', 'P10', 'P11', 'P12', 'P13', 'P14']
g_id = ['G1', 'G2', 'G3', 'G4', 'G5', 'G6', 'G7', 'G8', 'G9', 'G10']

dir = os.getcwd()

dst_train = os.path.join(dir, 'images', 'train')
dst_test = os.path.join(dir, 'images', 'test')

os.makedirs(dst_train)
os.makedirs(dst_test)

src_images = os.path.join(dir, 'rgb_kinect_leap_dataset')
src_labels = os.path.join(dir, 'rgb_kinect_leap_dataset_labels')

# labels -> XML
# images -> PNG

for p in p_id:
    for g in g_id:
        # 80% train, 20% test split
        for i in range(10):
            filename_img = p + '_' + g + '_' + str(i) + '.png'
            filename_label = p + '_' + g + '_' + str(i) + '.xml'

            if i == 0 or i == 9:
                os.rename(os.path.join(src_images, filename_img), os.path.join(dst_test, filename_img))
                os.rename(os.path.join(src_labels, filename_label), os.path.join(dst_test, filename_label))
            else:
                os.rename(os.path.join(src_images, filename_img), os.path.join(dst_train, filename_img))
                os.rename(os.path.join(src_labels, filename_label), os.path.join(dst_train, filename_label))
