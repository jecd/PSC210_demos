#!/bin/bash
in_file=/home/jordan/fMRI_demos/ds000114/sub-01/ses-test/func/sub-01_ses-test_task-fingerfootlips_bold_st.nii.gz
out_file=/home/jordan/fMRI_demos/ds000114/sub-01/ses-test/func/sub-01_ses-test_task-fingerfootlips_bold_st_mc.nii.gz

echo $in_file
echo $out_file
mcflirt -in $in_file -o $out_file -stats -mats -plots -report -rmsrel -rmsabs -spline_final

# vis
fsleyes $in_file $out_file

## lets try it with the mean volume
# first we will change the outfile name
out_file=/home/jordan/fMRI_demos/ds000114/sub-01/ses-test/func/sub-01_ses-test_task-fingerfootlips_bold_st_mean_ref_mc.nii.gz
mcflirt -in $in_file -o $out_file -stats -mats -plots -report -rmsrel -rmsabs -spline_final

# vis 
fsleyes $in_file $out_file

## lets try it with a bad subject
in_file=/home/jordan/fMRI_demos/ds000114/sub-01/ses-test/func/bad_movement_bold.nii
out_file=/home/jordan/fMRI_demos/ds000114/sub-01/ses-test/func/bad_movement_bold_mc.nii.gz
mcflirt -in $in_file -o $out_file -stats -mats -plots -report -rmsrel -rmsabs -spline_final

fsleyes $in_file $out_file