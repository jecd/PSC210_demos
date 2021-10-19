#!/bin/bash
in_file=/home/jordan/fMRI_demos/ds000114/sub-01/ses-test/func/sub-01_ses-test_task-fingerfootlips_bold_st.nii.gz
out_file=/home/jordan/fMRI_demos/ds000114/sub-01/ses-test/func/sub-01_ses-test_task-fingerfootlips_bold_st_mc.nii.gz

echo $in_file
echo $out_file
mcflirt -in $in_file -o $out_file -stats -mats -plots -report

# vis
fsleyes $in_file $out_file

## lets try it with the mean volume
# first we will change the outfile name
out_file=/home/jordan/fMRI_demos/ds000114/sub-01/ses-test/func/sub-01_ses-test_task-fingerfootlips_bold_st_mean_ref_mc.nii.gz
mcflirt -in $in_file -o $out_file -meanvol -stats -mats -plots -report

# vis 
fsleyes $in_file $out_file