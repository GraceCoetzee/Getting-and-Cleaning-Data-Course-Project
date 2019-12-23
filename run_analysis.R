## part 1 load in the "training" and "test" data  from the .txt files
    X_train<-read.table("X_train.txt")
    Y_train<-read.table("y_train.txt")
    Sub_train<-read.table("subject_train.txt")
    X_test<-read.table("X_test.txt")
    Y_test<-read.table("y_test.txt")
    Sub_test<-read.table("subject_test.txt")
    activity_labels<-read.table("activity_labels.txt")
    features<-read.table("features.txt")


##part 2 cleaning and preparing data
  ##rename columns in the X_test and X_train data.frames
    
      colnames(X_test)<-t(features[2])
      colnames(X_train)<-t(features[2])
    
    ## append the observations of Y_test and Y_train in order to identify the activity_label and Subject associated with each observation
    
      X_test$Activityname<-Y_test[,1]
      X_test$participant<-Sub_test[,1]
      X_train$Activityname<-Y_train[,1]
      X_train$participant<-Sub_train[,1]
      
      
## part 3 rbind the "training" and "test" data sets to create one tidy dataset, by removing duplicate column names
      Data<-rbind(X_test,X_train)
      duplicated(colnames(Data))
      CleanData <- Data[, !duplicated(colnames(Data))]

## part 4 extract measurements containing the mean and standard deviation and the activity labels into three dataframes
      SubDataMean <- CleanData[,grep("mean", colnames(CleanData))]
      SubDataStd <- CleanData[,grep("std", colnames(CleanData))]
      SubDataLabels<-CleanData[,477:479]
      
      ##combine the two subsets to make one dataframe
      SubData<-cbind(SubDataMean,SubDataStd, SubDataLabels)
      
      
## part 5 name the activites in the data set (using descriptive names)
      SubData$Activityname[SubData$Activityname == 1] <- "Walking"
      SubData$Activityname[SubData$Activityname == 2] <- "Walking upstairs"
      SubData$Activityname[SubData$Activityname == 3] <- "Walking downstairs"
      SubData$Activityname[SubData$Activityname == 4] <- "Sitting"
      SubData$Activityname[SubData$Activityname == 5] <- "Standing"
      SubData$Activityname[SubData$Activityname == 6] <- "Laying
      

## part 6 label dataset with descriptive variable names

        names(SubData) <- gsub("Acc", "Accelerator", names(SubData))
        names(SubData) <- gsub("Mag", "Magnitude", names(SubData))
        names(SubData) <- gsub("Gyro", "Gyroscope", names(SubData))
        names(SubData) <- gsub("^t", "time", names(SubData))
        names(SubData) <- gsub("^f", "frequency", names(SubData))

## part 7 create a dataset containing the average for each variable and each subject
        Newdf<-data.table(SubData)
        FinalDataTidy <- Newdf[, lapply(.SD, mean), by = 'participant,Activityname']
    