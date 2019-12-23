---
title: "README"
author: "Grace Coetzee"
date: "23/12/2019"
output:
  html_document:
    keep_md: yes
  pdf_document: default

 
---



README
Assignment submission G. Coetzee for Getting and Cleaning Data


##file output from assignment
The files associated with this submission are:
1. README.txt
2. Run_analysis.R (R script to obtain the TidyData.txt)
3. TidyData.txt (Output)
4. Codebook (detailing the varibables listed in the TidyData.txt file)



##High level steps taken during the assignemnt:
1. Obtain the data
2. Load, review and get familiar with the data
3. Name the columns on the data
4. Append additional data (such as the Activity name and the participant number)
5. clean the data (remove column duplicates, rename the columns to avoid acronyms. i.e. type out the full words)
6. create a tidy dataset that contain the average value for each observation by activity type and participant


This assignment is based on the "Human Activity Recognition Using Smartphones Dataset" experiment
Version 1.0 dataset

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For further information please visit:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
