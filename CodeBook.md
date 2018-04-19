# Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

# Variables

## Identifiers
-	subject
-	activity

## Measurements

-	timeDomainBodyAccelerometerMeanX
-	timeDomainBodyAccelerometerMeanY
-	timeDomainBodyAccelerometerMeanZ
-	timeDomainBodyAccelerometerStandardDeviationX
-	timeDomainBodyAccelerometerStandardDeviationY
-	timeDomainBodyAccelerometerStandardDeviationZ
-	timeDomainGravityAccelerometerMeanX
-	timeDomainGravityAccelerometerMeanY
-	timeDomainGravityAccelerometerMeanZ
-	timeDomainGravityAccelerometerStandardDeviationX
-	timeDomainGravityAccelerometerStandardDeviationY
-	timeDomainGravityAccelerometerStandardDeviationZ
-	timeDomainBodyAccelerometerJerkMeanX
-	timeDomainBodyAccelerometerJerkMeanY
-	timeDomainBodyAccelerometerJerkMeanZ
-	timeDomainBodyAccelerometerJerkStandardDeviationX
-	timeDomainBodyAccelerometerJerkStandardDeviationY
-	timeDomainBodyAccelerometerJerkStandardDeviationZ
-	timeDomainBodyGyroscopeMeanX
-	timeDomainBodyGyroscopeMeanY
-	timeDomainBodyGyroscopeMeanZ
-	timeDomainBodyGyroscopeStandardDeviationX
-	timeDomainBodyGyroscopeStandardDeviationY
-	timeDomainBodyGyroscopeStandardDeviationZ
-	timeDomainBodyGyroscopeJerkMeanX
-	timeDomainBodyGyroscopeJerkMeanY
-	timeDomainBodyGyroscopeJerkMeanZ
-	timeDomainBodyGyroscopeJerkStandardDeviationX
-	timeDomainBodyGyroscopeJerkStandardDeviationY
-	timeDomainBodyGyroscopeJerkStandardDeviationZ
-	timeDomainBodyAccelerometerMagnitudeMean
-	timeDomainBodyAccelerometerMagnitudeStandardDeviation
-	timeDomainGravityAccelerometerMagnitudeMean
-	timeDomainGravityAccelerometerMagnitudeStandardDeviation
-	timeDomainBodyAccelerometerJerkMagnitudeMean
-	timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation
-	timeDomainBodyGyroscopeMagnitudeMean
-	timeDomainBodyGyroscopeMagnitudeStandardDeviation
-	timeDomainBodyGyroscopeJerkMagnitudeMean
-	timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation
-	frequencyDomainBodyAccelerometerMeanX
-	frequencyDomainBodyAccelerometerMeanY
-	frequencyDomainBodyAccelerometerMeanZ
-	frequencyDomainBodyAccelerometerStandardDeviationX
-	frequencyDomainBodyAccelerometerStandardDeviationY
-	frequencyDomainBodyAccelerometerStandardDeviationZ
-	frequencyDomainBodyAccelerometerMeanFrequencyX
-	frequencyDomainBodyAccelerometerMeanFrequencyY
-	frequencyDomainBodyAccelerometerMeanFrequencyZ
-	frequencyDomainBodyAccelerometerJerkMeanX
-	frequencyDomainBodyAccelerometerJerkMeanY
-	frequencyDomainBodyAccelerometerJerkMeanZ
-	frequencyDomainBodyAccelerometerJerkStandardDeviationX
-	frequencyDomainBodyAccelerometerJerkStandardDeviationY
-	frequencyDomainBodyAccelerometerJerkStandardDeviationZ
-	frequencyDomainBodyAccelerometerJerkMeanFrequencyX
-	frequencyDomainBodyAccelerometerJerkMeanFrequencyY
-	frequencyDomainBodyAccelerometerJerkMeanFrequencyZ
-	frequencyDomainBodyGyroscopeMeanX
-	frequencyDomainBodyGyroscopeMeanY
-	frequencyDomainBodyGyroscopeMeanZ
-	frequencyDomainBodyGyroscopeStandardDeviationX
-	frequencyDomainBodyGyroscopeStandardDeviationY
-	frequencyDomainBodyGyroscopeStandardDeviationZ
-	frequencyDomainBodyGyroscopeMeanFrequencyX
-	frequencyDomainBodyGyroscopeMeanFrequencyY
-	frequencyDomainBodyGyroscopeMeanFrequencyZ
-	frequencyDomainBodyAccelerometerMagnitudeMean
-	frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
-	frequencyDomainBodyAccelerometerMagnitudeMeanFrequency
-	frequencyDomainBodyBodyAccelerometerJerkMagnitudeMean
-	frequencyDomainBodyBodyAccelerometerJerkMagnitudeStandardDeviation
-	frequencyDomainBodyBodyAccelerometerJerkMagnitudeMeanFrequency
-	frequencyDomainBodyBodyGyroscopeMagnitudeMean
-	frequencyDomainBodyBodyGyroscopeMagnitudeStandardDeviation
-	frequencyDomainBodyBodyGyroscopeMagnitudeMeanFrequency
-	frequencyDomainBodyBodyGyroscopeJerkMagnitudeMean
-	frequencyDomainBodyBodyGyroscopeJerkMagnitudeStandardDeviation
-	frequencyDomainBodyBodyGyroscopeJerkMagnitudeMeanFrequency

## Activity Labels
- WALKING (value 1): subject was walking during the test
- WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
- WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
- SITTING (value 4): subject was sitting during the test
- STANDING (value 5): subject was standing during the test
- LAYING (value 6): subject was laying down during the test

# Transformations

The zip file containing the source data is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The following transformations were applied to the source data:

- The training and test sets were merged to create one data set.
- The measurements on the mean and standard deviation (i.e. signals containing the strings mean and std) were extracted for each measurement, and the others were discarded.
- The activity identifiers (originally coded as integers between 1 and 6) were replaced with descriptive activity names (see Identifiers section).
- The variable names were replaced with descriptive variable names (e.g. tBodyAcc-mean()-X was expanded to timeDomainBodyAccelerometerMeanX), using the following set of rules:
- The initial f and t were expanded to frequencyDomain and timeDomain respectively.
- Acc, Gyro, Mag, Freq, mean, and std were replaced with Accelerometer, Gyroscope, Magnitude, Frequency, Mean, and StandardDeviation respectively.
- Special characters (i.e. (, ), and -) were removed
- From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.
