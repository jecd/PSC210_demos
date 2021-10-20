#!/bin/bash
in_file=/home/jordan/fMRI_demos/ds000114/sub-01/ses-test/func/sub-01_ses-test_task-fingerfootlips_bold.nii.gz
out_file=/home/jordan/fMRI_demos/ds000114/sub-01/ses-test/func/sub-01_ses-test_task-fingerfootlips_bold_st.nii.gz
# slice_file=/home/jordan/fMRI_demos/ds000114/slice_timing.txt
slice_file=/home/jordan/fMRI_demos/ds000114/correct_slice_timing.txt


echo $in_file
echo $out_file
echo $slice_file

slicetimer -i $in_file -o $out_file -r 2.5 --tcustom=$slice_file --verbose

fsleyes $in_file $out_file