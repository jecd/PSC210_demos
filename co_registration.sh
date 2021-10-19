#!/bin/bash
in_file=/home/jordan/fMRI_demos/ds000114/sub-01/ses-test/func/sub-01_ses-test_task-fingerfootlips_bold_mc.nii.gz
out_file=/home/jordan/fMRI_demos/ds000114/sub-01/ses-test/func/sub-01_ses-test_task-fingerfootlips_bold_mc.nii.gz

echo $in_file
echo $out_file
mcflirt -in $in_file -o $out_file -stats -mats -plots -report
