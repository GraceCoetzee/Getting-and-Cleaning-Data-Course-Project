---
title: 'Codebook Assignment: Getting and Cleaning Data Course Project '
author: "Grace Coetzee"
date: "23 December 2019"
output:
  html_document:
    keep_md: yes
  pdf_document: default
---

## Project Description
This project provides a step by step method of cleaning the data obtained from the Machine Learning Repository for the the experiment entitled: "Human Activity Recognition Using Smartphones Data Set" 

##Study design and data processing
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

###Collection of the raw data

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


###Notes on the original (raw) data 
Not Applicable

##Creating the tidy datafile

###Guide to create the tidy data file

1. Download the data from the provided link
2. Load in the "training" and "test" data  from the .txt files
3. View and become familiar with the various datasets and identify what variables are associated across the different datasets.



###Cleaning of the data
To clean the data:
1.Give columns names
2.Append activity and participant information to the test and train datasets
3. Remove duplicate columnames
4. Merge the test and train datasets (using rbind)
5. Change the Activity labels from integers to descrpitive values (As defined below)
6. Expand acronyms and symbols to full descriptions (e.g "Acc" changes to "Accelerate")
7. Make a tidy datafile and extract the average value for each variable by subject and by activity

[link to the readme document that describes the code in greater detail]()

##Description of the variables in the tiny_data.txt file
General description of the file including:
 - Dimensions of Data Frame: 180 81
 
 - Summary of the data:
 
 - Data Labels

Classes ‘data.table’ and 'data.frame':	180 obs. of  81 variables:
 $ participant                                         : int  2 2 2 2 2 2 4 4 4 4 ...
 
 $ Activityname                                        : chr  "Standing" "Sitting" "Laying" "Walking" ...
 
 $ timeBodyAccelerator-mean()-X                        : num  0.278 0.277 0.281 0.276 0.278 ...
 
 $ timeBodyAccelerator-mean()-Y                        : num  -0.0184 -0.0157 -0.0182 -0.0186 -0.0227 ...
 
 $ timeBodyAccelerator-mean()-Z                        : num  -0.106 -0.109 -0.107 -0.106 -0.117 ...
 
 $ timeGravityAccelerator-mean()-X                     : num  0.897 0.94 -0.51 0.913 0.862 ...
 
 $ timeGravityAccelerator-mean()-Y                     : num  -0.37 -0.106 0.753 -0.347 -0.326 ...
 
 $ timeGravityAccelerator-mean()-Z                     : num  0.1297 0.1987 0.6468 0.0847 -0.0439 ...
 
 $ timeBodyAcceleratorJerk-mean()-X                    : num  0.0748 0.0723 0.0826 0.0618 0.11 ...
 
 $ timeBodyAcceleratorJerk-mean()-Y                    : num  0.01033 0.0117 0.01225 0.01825 -0.00328 ...
 
 $ timeBodyAcceleratorJerk-mean()-Z                    : num  -0.00837 0.00761 -0.0018 0.0079 -0.02094 ...
 
 $ timeBodyGyroscope-mean()-X                          : num  -0.0239 -0.0455 -0.0185 -0.053 -0.1159 ...
 
 $ timeBodyGyroscope-mean()-Y                          : num  -0.08204 -0.05993 -0.1118 -0.04824 -0.00482 ...
 
 $ timeBodyGyroscope-mean()-Z                          : num  0.0878 0.0412 0.1449 0.0828 0.0972 ...
 
 $ timeBodyGyroscopeJerk-mean()-X                      : num  -0.1056 -0.0936 -0.102 -0.0819 -0.0581 ...
 
 $ timeBodyGyroscopeJerk-mean()-Y                      : num  -0.0422 -0.0416 -0.0359 -0.0538 -0.0421 ...
 
 $ timeBodyGyroscopeJerk-mean()-Z                      : num  -0.0547 -0.0436 -0.0702 -0.0515 -0.071 ...
 
 $ timeBodyAcceleratorMagnitude-mean()                 : num  -0.966 -0.968 -0.977 -0.29 0.09 ...
 
 $ timeGravityAcceleratorMagnitude-mean()              : num  -0.966 -0.968 -0.977 -0.29 0.09 ...
 
 $ timeBodyAcceleratorJerkMagnitude-mean()             : num  -0.98049 -0.98677 -0.98774 -0.28142 0.00566 ...
 
 $ timeBodyGyroscopeMagnitude-mean()                   : num  -0.963 -0.946 -0.95 -0.447 -0.162 ...
 
 $ timeBodyGyroscopeJerkMagnitude-mean()               : num  -0.984 -0.991 -0.992 -0.548 -0.411 ...
 
 $ frequencyBodyAccelerator-mean()-X                   : num  -0.984 -0.986 -0.977 -0.346 0.113 ...
 
 $ frequencyBodyAccelerator-mean()-Y                   : num  -0.9599 -0.9573 -0.9798 -0.0219 0.2783 ...
 
 $ frequencyBodyAccelerator-mean()-Z                   : num  -0.962 -0.97 -0.984 -0.454 -0.131 ...
 
 $ frequencyBodyAccelerator-meanFreq()-X               : num  0.1085 0.0852 -0.1465 -0.1458 -0.2737 ...
 
 $ frequencyBodyAccelerator-meanFreq()-Y               : num  0.0623 0.1502 0.2573 0.1986 0.0119 ...
 
 $ frequencyBodyAccelerator-meanFreq()-Z               : num  0.1045 0.0961 0.4025 0.0689 0.0904 ...
 
 $ frequencyBodyAcceleratorJerk-mean()-X               : num  -0.981 -0.988 -0.986 -0.305 0.138 ...
 
 $ frequencyBodyAcceleratorJerk-mean()-Y               : num  -0.9709 -0.9771 -0.9828 -0.0788 0.0962 ...
 
 $ frequencyBodyAcceleratorJerk-mean()-Z               : num  -0.98 -0.985 -0.986 -0.555 -0.271 ...

 $ frequencyBodyAcceleratorJerk-meanFreq()-X           : num  0.3314 0.3055 0.1598 -0.0727 -0.1439 ...

 $ frequencyBodyAcceleratorJerk-meanFreq()-Y           : num  -0.0569 0.0262 0.1212 -0.2636 -0.3575 ...

 $ frequencyBodyAcceleratorJerk-meanFreq()-Z           : num  0.0396 0.0929 0.1906 -0.2548 -0.2347 ...

 $ frequencyBodyGyroscope-mean()-X                     : num  -0.967 -0.983 -0.986 -0.43 -0.146 ...

 $ frequencyBodyGyroscope-mean()-Y                     : num  -0.973 -0.982 -0.983 -0.555 -0.362 ...

 $ frequencyBodyGyroscope-mean()-Z                     : num  -0.9606 -0.9598 -0.9627 -0.3967 -0.0875 ...

 $ frequencyBodyGyroscope-meanFreq()-X                 : num  -0.10742 0.13052 0.10261 0.00728 -0.03753 ...

 $ frequencyBodyGyroscope-meanFreq()-Y                 : num  -0.1712 -0.1921 0.0423 -0.0427 0.0771 ...

 $ frequencyBodyGyroscope-meanFreq()-Z                 : num  0.000227 0.040947 0.055299 0.139752 0.136775 ...

 $ frequencyBodyAcceleratorMagnitude-mean()            : num  -0.964 -0.961 -0.975 -0.324 0.293 ...

 $ frequencyBodyAcceleratorMagnitude-meanFreq()        : num  0.1196 0.1309 0.2663 0.3932 0.0938 ...

 $ frequencyBodyBodyAcceleratorJerkMagnitude-mean()    : num  -0.977 -0.984 -0.985 -0.169 0.222 ...

 $ frequencyBodyBodyAcceleratorJerkMagnitude-meanFreq(): num  0.3049 0.2801 0.3418 0.2075 0.0188 ...

 $ frequencyBodyBodyGyroscopeMagnitude-mean()          : num  -0.962 -0.972 -0.972 -0.531 -0.321 ...


 $ frequencyBodyBodyGyroscopeMagnitude-meanFreq()      : num  -0.0661 -0.1064 0.0186 0.3053 0.104 ...

 $ frequencyBodyBodyGyroscopeJerkMagnitude-mean()      : num  -0.978 -0.99 -0.99 -0.583 -0.38 ...

 $ frequencyBodyBodyGyroscopeJerkMagnitude-meanFreq()  : num  0.1607 0.1947 0.2648 0.1263 -0.0512 ...

 $ timeBodyAccelerator-std()-X                         : num  -0.9873 -0.9868 -0.9741 -0.4236 0.0464 ...

 $ timeBodyAccelerator-std()-Y                         : num  -0.9573 -0.9507 -0.9803 -0.0781 0.2629 ...

 $ timeBodyAccelerator-std()-Z                         : num  -0.95 -0.96 -0.984 -0.425 -0.103 ...

 $ timeGravityAccelerator-std()-X                      : num  -0.987 -0.98 -0.959 -0.973 -0.94 ...

 $ timeGravityAccelerator-std()-Y                      : num  -0.974 -0.957 -0.988 -0.972 -0.94 ...

 $ timeGravityAccelerator-std()-Z                      : num  -0.946 -0.954 -0.984 -0.972 -0.931 ...

 $ timeBodyAcceleratorJerk-std()-X                     : num  -0.981 -0.988 -0.986 -0.278 0.147 ...

 $ timeBodyAcceleratorJerk-std()-Y                     : num  -0.9711 -0.978 -0.9832 -0.0166 0.1268 ...

 $ timeBodyAcceleratorJerk-std()-Z                     : num  -0.983 -0.988 -0.988 -0.586 -0.34 ...

 $ timeBodyGyroscope-std()-X                           : num  -0.973 -0.986 -0.988 -0.562 -0.321 ...


 $ timeBodyGyroscope-std()-Y                           : num  -0.971 -0.979 -0.982 -0.538 -0.416 ...

 $ timeBodyGyroscope-std()-Z                           : num  -0.965 -0.96 -0.96 -0.481 -0.279 ...

 $ timeBodyGyroscopeJerk-std()-X                       : num  -0.979 -0.99 -0.993 -0.39 -0.244 ...

 $ timeBodyGyroscopeJerk-std()-Y                       : num  -0.983 -0.991 -0.99 -0.634 -0.469 ...

 $ timeBodyGyroscopeJerk-std()-Z                       : num  -0.974 -0.986 -0.988 -0.435 -0.218 ...

 $ timeBodyAcceleratorMagnitude-std()                  : num  -0.958 -0.953 -0.973 -0.423 0.216 ...

 $ timeGravityAcceleratorMagnitude-std()               : num  -0.958 -0.953 -0.973 -0.423 0.216 ...

 $ timeBodyAcceleratorJerkMagnitude-std()              : num  -0.977 -0.984 -0.986 -0.164 0.23 ...

 $ timeBodyGyroscopeMagnitude-std()                    : num  -0.954 -0.961 -0.961 -0.553 -0.275 ...

 $ timeBodyGyroscopeJerkMagnitude-std()                : num  -0.977 -0.99 -0.99 -0.558 -0.343 ...

 $ frequencyBodyAccelerator-std()-X                    : num  -0.9891 -0.9874 -0.9732 -0.4577 0.0161 ...

 $ frequencyBodyAccelerator-std()-Y                    : num  -0.958 -0.95 -0.981 -0.169 0.172 ...

 $ frequencyBodyAccelerator-std()-Z                    : num  -0.946 -0.957 -0.985 -0.455 -0.162 ...

 $ frequencyBodyAcceleratorJerk-std()-X                : num  -0.983 -0.989 -0.987 -0.314 0.05 ...

 $ frequencyBodyAcceleratorJerk-std()-Y                : num  -0.9735 -0.9808 -0.985 -0.0153 0.0808 ...

 $ frequencyBodyAcceleratorJerk-std()-Z                : num  -0.985 -0.989 -0.989 -0.616 -0.408 ...

 $ frequencyBodyGyroscope-std()-X                      : num  -0.975 -0.987 -0.989 -0.604 -0.379 ...

 $ frequencyBodyGyroscope-std()-Y                      : num  -0.971 -0.977 -0.982 -0.533 -0.459 ...

 $ frequencyBodyGyroscope-std()-Z                      : num  -0.97 -0.964 -0.963 -0.56 -0.423 ...

 $ frequencyBodyAcceleratorMagnitude-std()             : num  -0.9605 -0.9556 -0.9751 -0.5771 -0.0215 ...

 $ frequencyBodyBodyAcceleratorJerkMagnitude-std()     : num  -0.975 -0.984 -0.985 -0.164 0.227 ...

 $ frequencyBodyBodyGyroscopeMagnitude-std()           : num  -0.957 -0.961 -0.961 -0.652 -0.373 ...

 $ frequencyBodyBodyGyroscopeJerkMagnitude-std()       : num  -0.978 -0.99 -0.989 -0.558 -0.344 ...


  participant   Activityname       timeBodyAccelerator-mean()-X timeBodyAccelerator-mean()-Y
 Min.   : 1.0   Length:180         Min.   :0.2216               Min.   :-0.040514           
 1st Qu.: 8.0   Class :character   1st Qu.:0.2712               1st Qu.:-0.020022           
 Median :15.5   Mode  :character   Median :0.2770               Median :-0.017262           
 Mean   :15.5                      Mean   :0.2743               Mean   :-0.017876           
 3rd Qu.:23.0                      3rd Qu.:0.2800               3rd Qu.:-0.014936           
 Max.   :30.0                      Max.   :0.3015               Max.   :-0.001308           
 timeBodyAccelerator-mean()-Z timeGravityAccelerator-mean()-X timeGravityAccelerator-mean()-Y
 Min.   :-0.15251             Min.   :-0.6800                 Min.   :-0.47989               
 1st Qu.:-0.11207             1st Qu.: 0.8376                 1st Qu.:-0.23319               
 Median :-0.10819             Median : 0.9208                 Median :-0.12782               
 Mean   :-0.10916             Mean   : 0.6975                 Mean   :-0.01621               
 3rd Qu.:-0.10443             3rd Qu.: 0.9425                 3rd Qu.: 0.08773               
 Max.   :-0.07538             Max.   : 0.9745                 Max.   : 0.95659               
 timeGravityAccelerator-mean()-Z timeBodyAcceleratorJerk-mean()-X timeBodyAcceleratorJerk-mean()-Y
 Min.   :-0.49509                Min.   :0.04269                  Min.   :-0.0386872              
 1st Qu.:-0.11726                1st Qu.:0.07396                  1st Qu.: 0.0004664              
 Median : 0.02384                Median :0.07640                  Median : 0.0094698              
 Mean   : 0.07413                Mean   :0.07947                  Mean   : 0.0075652              
 3rd Qu.: 0.14946                3rd Qu.:0.08330                  3rd Qu.: 0.0134008              
 Max.   : 0.95787                Max.   :0.13019                  Max.   : 0.0568186              
 timeBodyAcceleratorJerk-mean()-Z timeBodyGyroscope-mean()-X timeBodyGyroscope-mean()-Y timeBodyGyroscope-mean()-Z
 Min.   :-0.067458                Min.   :-0.20578           Min.   :-0.20421           Min.   :-0.07245          
 1st Qu.:-0.010601                1st Qu.:-0.04712           1st Qu.:-0.08955           1st Qu.: 0.07475          
 Median :-0.003861                Median :-0.02871           Median :-0.07318           Median : 0.08512          
 Mean   :-0.004953                Mean   :-0.03244           Mean   :-0.07426           Mean   : 0.08744          
 3rd Qu.: 0.001958                3rd Qu.:-0.01676           3rd Qu.:-0.06113           3rd Qu.: 0.10177          
 Max.   : 0.038053                Max.   : 0.19270           Max.   : 0.02747           Max.   : 0.17910          
 timeBodyGyroscopeJerk-mean()-X timeBodyGyroscopeJerk-mean()-Y timeBodyGyroscopeJerk-mean()-Z
 Min.   :-0.15721               Min.   :-0.07681               Min.   :-0.092500             
 1st Qu.:-0.10322               1st Qu.:-0.04552               1st Qu.:-0.061725             
 Median :-0.09868               Median :-0.04112               Median :-0.053430             
 Mean   :-0.09606               Mean   :-0.04269               Mean   :-0.054802             
 3rd Qu.:-0.09110               3rd Qu.:-0.03842               3rd Qu.:-0.048985             
 Max.   :-0.02209               Max.   :-0.01320               Max.   :-0.006941             
 timeBodyAcceleratorMagnitude-mean() timeGravityAcceleratorMagnitude-mean()
 Min.   :-0.9865                     Min.   :-0.9865                       
 1st Qu.:-0.9573                     1st Qu.:-0.9573                       
 Median :-0.4829                     Median :-0.4829                       
 Mean   :-0.4973                     Mean   :-0.4973                       
 3rd Qu.:-0.0919                     3rd Qu.:-0.0919                       
 Max.   : 0.6446                     Max.   : 0.6446                       
 timeBodyAcceleratorJerkMagnitude-mean() timeBodyGyroscopeMagnitude-mean() timeBodyGyroscopeJerkMagnitude-mean()
 Min.   :-0.9928                         Min.   :-0.9807                   Min.   :-0.99732                     
 1st Qu.:-0.9807                         1st Qu.:-0.9461                   1st Qu.:-0.98515                     
 Median :-0.8168                         Median :-0.6551                   Median :-0.86479                     
 Mean   :-0.6079                         Mean   :-0.5652                   Mean   :-0.73637                     
 3rd Qu.:-0.2456                         3rd Qu.:-0.2159                   3rd Qu.:-0.51186                     
 Max.   : 0.4345                         Max.   : 0.4180                   Max.   : 0.08758                     
 frequencyBodyAccelerator-mean()-X frequencyBodyAccelerator-mean()-Y frequencyBodyAccelerator-mean()-Z
 Min.   :-0.9952                   Min.   :-0.98903                  Min.   :-0.9895                  
 1st Qu.:-0.9787                   1st Qu.:-0.95361                  1st Qu.:-0.9619                  
 Median :-0.7691                   Median :-0.59498                  Median :-0.7236                  
 Mean   :-0.5758                   Mean   :-0.48873                  Mean   :-0.6297                  
 3rd Qu.:-0.2174                   3rd Qu.:-0.06341                  3rd Qu.:-0.3183                  
 Max.   : 0.5370                   Max.   : 0.52419                  Max.   : 0.2807                  
 frequencyBodyAccelerator-meanFreq()-X frequencyBodyAccelerator-meanFreq()-Y frequencyBodyAccelerator-meanFreq()-Z
 Min.   :-0.63591                      Min.   :-0.379518                     Min.   :-0.52011                     
 1st Qu.:-0.39165                      1st Qu.:-0.081314                     1st Qu.:-0.03629                     
 Median :-0.25731                      Median : 0.007855                     Median : 0.06582                     
 Mean   :-0.23227                      Mean   : 0.011529                     Mean   : 0.04372                     
 3rd Qu.:-0.06105                      3rd Qu.: 0.086281                     3rd Qu.: 0.17542                     
 Max.   : 0.15912                      Max.   : 0.466528                     Max.   : 0.40253                     
 frequencyBodyAcceleratorJerk-mean()-X frequencyBodyAcceleratorJerk-mean()-Y frequencyBodyAcceleratorJerk-mean()-Z
 Min.   :-0.9946                       Min.   :-0.9894                       Min.   :-0.9920                      
 1st Qu.:-0.9828                       1st Qu.:-0.9725                       1st Qu.:-0.9796                      
 Median :-0.8126                       Median :-0.7817                       Median :-0.8707                      
 Mean   :-0.6139                       Mean   :-0.5882                       Mean   :-0.7144                      
 3rd Qu.:-0.2820                       3rd Qu.:-0.1963                       3rd Qu.:-0.4697                      
 Max.   : 0.4743                       Max.   : 0.2767                       Max.   : 0.1578                      
 frequencyBodyAcceleratorJerk-meanFreq()-X frequencyBodyAcceleratorJerk-meanFreq()-Y
 Min.   :-0.57604                          Min.   :-0.60197                         
 1st Qu.:-0.28966                          1st Qu.:-0.39751                         
 Median :-0.06091                          Median :-0.23209                         
 Mean   :-0.06910                          Mean   :-0.22810                         
 3rd Qu.: 0.17660                          3rd Qu.:-0.04721                         
 Max.   : 0.33145                          Max.   : 0.19568                         
 frequencyBodyAcceleratorJerk-meanFreq()-Z frequencyBodyGyroscope-mean()-X frequencyBodyGyroscope-mean()-Y
 Min.   :-0.62756                          Min.   :-0.9931                 Min.   :-0.9940                
 1st Qu.:-0.30867                          1st Qu.:-0.9697                 1st Qu.:-0.9700                
 Median :-0.09187                          Median :-0.7300                 Median :-0.8141                
 Mean   :-0.13760                          Mean   :-0.6367                 Mean   :-0.6767                
 3rd Qu.: 0.03858                          3rd Qu.:-0.3387                 3rd Qu.:-0.4458                
 Max.   : 0.23011                          Max.   : 0.4750                 Max.   : 0.3288                
 frequencyBodyGyroscope-mean()-Z frequencyBodyGyroscope-meanFreq()-X frequencyBodyGyroscope-meanFreq()-Y
 Min.   :-0.9860                 Min.   :-0.395770                   Min.   :-0.66681                   
 1st Qu.:-0.9624                 1st Qu.:-0.213363                   1st Qu.:-0.29433                   
 Median :-0.7909                 Median :-0.115527                   Median :-0.15794                   
 Mean   :-0.6044                 Mean   :-0.104551                   Mean   :-0.16741                   
 3rd Qu.:-0.2635                 3rd Qu.: 0.002655                   3rd Qu.:-0.04269                   
 Max.   : 0.4924                 Max.   : 0.249209                   Max.   : 0.27314                   
 frequencyBodyGyroscope-meanFreq()-Z frequencyBodyAcceleratorMagnitude-mean()
 Min.   :-0.50749                    Min.   :-0.9868                         
 1st Qu.:-0.15481                    1st Qu.:-0.9560                         
 Median :-0.05081                    Median :-0.6703                         
 Mean   :-0.05718                    Mean   :-0.5365                         
 3rd Qu.: 0.04152                    3rd Qu.:-0.1622                         
 Max.   : 0.37707                    Max.   : 0.5866                         
 frequencyBodyAcceleratorMagnitude-meanFreq() frequencyBodyBodyAcceleratorJerkMagnitude-mean()
 Min.   :-0.31234                             Min.   :-0.9940                                 
 1st Qu.:-0.01475                             1st Qu.:-0.9770                                 
 Median : 0.08132                             Median :-0.7940                                 
 Mean   : 0.07613                             Mean   :-0.5756                                 
 3rd Qu.: 0.17436                             3rd Qu.:-0.1872                                 
 Max.   : 0.43585                             Max.   : 0.5384                                 
 frequencyBodyBodyAcceleratorJerkMagnitude-meanFreq() frequencyBodyBodyGyroscopeMagnitude-mean()
 Min.   :-0.12521                                     Min.   :-0.9865                           
 1st Qu.: 0.04527                                     1st Qu.:-0.9616                           
 Median : 0.17198                                     Median :-0.7657                           
 Mean   : 0.16255                                     Mean   :-0.6671                           
 3rd Qu.: 0.27593                                     3rd Qu.:-0.4087                           
 Max.   : 0.48809                                     Max.   : 0.2040                           
 frequencyBodyBodyGyroscopeMagnitude-meanFreq() frequencyBodyBodyGyroscopeJerkMagnitude-mean()
 Min.   :-0.45664                               Min.   :-0.9976                               
 1st Qu.:-0.16951                               1st Qu.:-0.9813                               
 Median :-0.05352                               Median :-0.8779                               
 Mean   :-0.03603                               Mean   :-0.7564                               
 3rd Qu.: 0.08228                               3rd Qu.:-0.5831                               
 Max.   : 0.40952                               Max.   : 0.1466                               
 frequencyBodyBodyGyroscopeJerkMagnitude-meanFreq() timeBodyAccelerator-std()-X timeBodyAccelerator-std()-Y
 Min.   :-0.18292                                   Min.   :-0.9961             Min.   :-0.99024           
 1st Qu.: 0.05423                                   1st Qu.:-0.9799             1st Qu.:-0.94205           
 Median : 0.11156                                   Median :-0.7526             Median :-0.50897           
 Mean   : 0.12592                                   Mean   :-0.5577             Mean   :-0.46046           
 3rd Qu.: 0.20805                                   3rd Qu.:-0.1984             3rd Qu.:-0.03077           
 Max.   : 0.42630                                   Max.   : 0.6269             Max.   : 0.61694           
 timeBodyAccelerator-std()-Z timeGravityAccelerator-std()-X timeGravityAccelerator-std()-Y
 Min.   :-0.9877             Min.   :-0.9968                Min.   :-0.9942               
 1st Qu.:-0.9498             1st Qu.:-0.9825                1st Qu.:-0.9711               
 Median :-0.6518             Median :-0.9695                Median :-0.9590               
 Mean   :-0.5756             Mean   :-0.9638                Mean   :-0.9524               
 3rd Qu.:-0.2306             3rd Qu.:-0.9509                3rd Qu.:-0.9370               
 Max.   : 0.6090             Max.   :-0.8296                Max.   :-0.6436               
 timeGravityAccelerator-std()-Z timeBodyAcceleratorJerk-std()-X timeBodyAcceleratorJerk-std()-Y
 Min.   :-0.9910                Min.   :-0.9946                 Min.   :-0.9895                
 1st Qu.:-0.9605                1st Qu.:-0.9832                 1st Qu.:-0.9724                
 Median :-0.9450                Median :-0.8104                 Median :-0.7756                
 Mean   :-0.9364                Mean   :-0.5949                 Mean   :-0.5654                
 3rd Qu.:-0.9180                3rd Qu.:-0.2233                 3rd Qu.:-0.1483                
 Max.   :-0.6102                Max.   : 0.5443                 Max.   : 0.3553                
 timeBodyAcceleratorJerk-std()-Z timeBodyGyroscope-std()-X timeBodyGyroscope-std()-Y timeBodyGyroscope-std()-Z
 Min.   :-0.99329                Min.   :-0.9943           Min.   :-0.9942           Min.   :-0.9855          
 1st Qu.:-0.98266                1st Qu.:-0.9735           1st Qu.:-0.9629           1st Qu.:-0.9609          
 Median :-0.88366                Median :-0.7890           Median :-0.8017           Median :-0.8010          
 Mean   :-0.73596                Mean   :-0.6916           Mean   :-0.6533           Mean   :-0.6164          
 3rd Qu.:-0.51212                3rd Qu.:-0.4414           3rd Qu.:-0.4196           3rd Qu.:-0.3106          
 Max.   : 0.03102                Max.   : 0.2677           Max.   : 0.4765           Max.   : 0.5649          
 timeBodyGyroscopeJerk-std()-X timeBodyGyroscopeJerk-std()-Y timeBodyGyroscopeJerk-std()-Z
 Min.   :-0.9965               Min.   :-0.9971               Min.   :-0.9954              
 1st Qu.:-0.9800               1st Qu.:-0.9832               1st Qu.:-0.9848              
 Median :-0.8396               Median :-0.8942               Median :-0.8610              
 Mean   :-0.7036               Mean   :-0.7636               Mean   :-0.7096              
 3rd Qu.:-0.4629               3rd Qu.:-0.5861               3rd Qu.:-0.4741              
 Max.   : 0.1791               Max.   : 0.2959               Max.   : 0.1932              
 timeBodyAcceleratorMagnitude-std() timeGravityAcceleratorMagnitude-std() timeBodyAcceleratorJerkMagnitude-std()
 Min.   :-0.9865                    Min.   :-0.9865                       Min.   :-0.9946                       
 1st Qu.:-0.9430                    1st Qu.:-0.9430                       1st Qu.:-0.9765                       
 Median :-0.6074                    Median :-0.6074                       Median :-0.8014                       
 Mean   :-0.5439                    Mean   :-0.5439                       Mean   :-0.5842                       
 3rd Qu.:-0.2090                    3rd Qu.:-0.2090                       3rd Qu.:-0.2173                       
 Max.   : 0.4284                    Max.   : 0.4284                       Max.   : 0.4506                       
 timeBodyGyroscopeMagnitude-std() timeBodyGyroscopeJerkMagnitude-std() frequencyBodyAccelerator-std()-X
 Min.   :-0.9814                  Min.   :-0.9977                      Min.   :-0.9966                 
 1st Qu.:-0.9476                  1st Qu.:-0.9805                      1st Qu.:-0.9820                 
 Median :-0.7420                  Median :-0.8809                      Median :-0.7470                 
 Mean   :-0.6304                  Mean   :-0.7550                      Mean   :-0.5522                 
 3rd Qu.:-0.3602                  3rd Qu.:-0.5767                      3rd Qu.:-0.1966                 
 Max.   : 0.3000                  Max.   : 0.2502                      Max.   : 0.6585                 
 frequencyBodyAccelerator-std()-Y frequencyBodyAccelerator-std()-Z frequencyBodyAcceleratorJerk-std()-X
 Min.   :-0.99068                 Min.   :-0.9872                  Min.   :-0.9951                     
 1st Qu.:-0.94042                 1st Qu.:-0.9459                  1st Qu.:-0.9847                     
 Median :-0.51338                 Median :-0.6441                  Median :-0.8254                     
 Mean   :-0.48148                 Mean   :-0.5824                  Mean   :-0.6121                     
 3rd Qu.:-0.07913                 3rd Qu.:-0.2655                  3rd Qu.:-0.2475                     
 Max.   : 0.56019                 Max.   : 0.6871                  Max.   : 0.4768                     
 frequencyBodyAcceleratorJerk-std()-Y frequencyBodyAcceleratorJerk-std()-Z frequencyBodyGyroscope-std()-X
 Min.   :-0.9905                      Min.   :-0.993108                    Min.   :-0.9947               
 1st Qu.:-0.9737                      1st Qu.:-0.983747                    1st Qu.:-0.9750               
 Median :-0.7852                      Median :-0.895121                    Median :-0.8086               
 Mean   :-0.5707                      Mean   :-0.756489                    Mean   :-0.7110               
 3rd Qu.:-0.1685                      3rd Qu.:-0.543787                    3rd Qu.:-0.4813               
 Max.   : 0.3498                      Max.   :-0.006236                    Max.   : 0.1966               
 frequencyBodyGyroscope-std()-Y frequencyBodyGyroscope-std()-Z frequencyBodyAcceleratorMagnitude-std()
 Min.   :-0.9944                Min.   :-0.9867                Min.   :-0.9876                        
 1st Qu.:-0.9602                1st Qu.:-0.9643                1st Qu.:-0.9452                        
 Median :-0.7964                Median :-0.8224                Median :-0.6513                        
 Mean   :-0.6454                Mean   :-0.6577                Mean   :-0.6210                        
 3rd Qu.:-0.4154                3rd Qu.:-0.3916                3rd Qu.:-0.3654                        
 Max.   : 0.6462                Max.   : 0.5225                Max.   : 0.1787                        
 frequencyBodyBodyAcceleratorJerkMagnitude-std() frequencyBodyBodyGyroscopeMagnitude-std()
 Min.   :-0.9944                                 Min.   :-0.9815                          
 1st Qu.:-0.9752                                 1st Qu.:-0.9488                          
 Median :-0.8126                                 Median :-0.7727                          
 Mean   :-0.5992                                 Mean   :-0.6723                          
 3rd Qu.:-0.2668                                 3rd Qu.:-0.4277                          
 Max.   : 0.3163                                 Max.   : 0.2367                          
 frequencyBodyBodyGyroscopeJerkMagnitude-std()
 Min.   :-0.9976                              
 1st Qu.:-0.9802                              
 Median :-0.8941                              
 Mean   :-0.7715                              
 3rd Qu.:-0.6081                              
 Max.   : 0.2878    

##Sources
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

##Annex
N/A

