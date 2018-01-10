# PR_ProjectDelivery

Repository for the project of Pattern Recognition - Authors D. Evangelista and A. Ciorra

## Prerequisites - SegNet

Install and build SegNet and its tutorial stuff:

* Follow the instruction in the [SegNet tutorial page](http://mi.eng.cam.ac.uk/projects/segnet/tutorial.html) 

### The ISIC Dataset

You first need to download all the ISIC dataset from the following links (Note that you can always register to the official website [isic-archive](http://challenge.isic-archive.com) and download the entire dataset after have been registered):

* [OriginalDataset_NOT_PREPROCESSED](https://drive.google.com/open?id=0B6WPbH08tSdtV0loVDlEZGZmVlE) - The complete dataset NOT preprocessed
* [OriginalDataset_PREPROCESSED](https://drive.google.com/open?id=0B6WPbH08tSdtY1hCZHh4SzBCbW8) - The complete dataset PREPROCESSED

### Process the Dataset - MASKS TRANSFORMATION

If you decided to download the NOT PROCESSED version of the dataset. Use the following script for transforming the masks in the SegNet format:

# move to the scripts folder
cd scripts/
#run the python script
python convert_for_segnet.py -f <input_data_format jpg or png> -i <input_data_folder> -o <output_data_folder>


### Process the Dataset - SELECT ONLY SAFE IMAGES
As mentioned in the slides, we only used a portion of the dataset. We only selected those images that were well segmented, including some of the images with some noise. Use the following script for selecting the safe images for the training:

# move to the scripts folder
cd scripts/
#run the python script
python select_safe_images.py -i <input_img_data_folder> -m <input_mask_data_folder> -o output.txt -r 0.8


This script will generate two file lists output_train.txt and output_test.txt, to be used within the SegNet pipeline for training and testing the models. If you don't want to spend time selecting the images manually, download our precomputed [file lists](https://drive.google.com/open?id=0B6WPbH08tSdtWEo1aHNSOW14ZFk).

## Training SegNet

Follow the [SegNet tutorial page](http://mi.eng.cam.ac.uk/projects/segnet/tutorial.html) for the camvid dataset. We used the segnet_basic model. Or follow our [slides](https://drive.google.com/open?id=0B6WPbH08tSdtc1hVbFZ1a3Mzenc).

## Testing the trained model

Follow our [slides](https://drive.google.com/open?id=0B6WPbH08tSdtc1hVbFZ1a3Mzenc). Or follow the [SegNet tutorial page](http://mi.eng.cam.ac.uk/projects/segnet/tutorial.html). Remember always to recompute the bn statistics before running the test. We modified the test script for better visualization and computation of the evaluation metrics:

# move to the scripts folder
cd scripts/
#run the python script
python test_segnet_medical.py --model <path to segnet_basic_inference_prototxt> --weights <path to test_weights.caffemodel> --plot <1 - view output || 0 - suppress output> --testfile <path to output_test.txt> --output <path to the folder where store the output result>
