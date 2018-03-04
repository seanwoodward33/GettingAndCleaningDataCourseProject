# Code Book

This code book summarises the data in 'tidy_data.txt', found in this repository.

See the 'README.md' for background information.

This document describes the data, the variables and the transformations performed to achieve the tidy data.

# Data

The 'tidy_data.txt' file is a text file containing a data table, output from R using the 'write.table()' function, as space seperated variables.

The first row of the file contrains the names of the variables, which are listed in the *Variables* section below.

# Variables

Each row contains the results for a given subject and given activity.

## Identifiers

- 'subjectNumber' - The ID of the test subject
- 'activityName' - The name of the activity being performed, which can take one of 6 possible values:
	-'WALKING'
	-'WALKING_UPSTAIRS'
	-'WALKING_DOWNSTAIRS'
	-'SITTING'
	-'STANDING'
	-'LAYING'

## Measurements

All measurements given are the mean value of multiple readings. All values are between -1 and 1.

The measurements are clasified into one of two domains, either in the time domain or the frequency domain. Frequency domain signals are achieved by performing a FFT to the time domain signals.

### Mean values of the body accelerometer in the X, Y and Z direction in the time domain (meters / seconds^2)

- 'timeDomainBodyAccelerometerMeanX'
- 'timeDomainBodyAccelerometerMeanY'
- 'timeDomainBodyAccelerometerMeanZ'

### Standard deviation of values of the body accelerometer in the X, Y and Z direction in the time domain

- 'timeDomainBodyAccelerometerStandardDeviationX'
- 'timeDomainBodyAccelerometerStandardDeviationY'
- 'timeDomainBodyAccelerometerStandardDeviationZ'

### Mean values of the Gravity accelerometer in the X, Y and Z direction in the time domain

- 'timeDomainGravityAccelerometerMeanX'
- 'timeDomainGravityAccelerometerMeanY'
- 'timeDomainGravityAccelerometerMeanZ'

### Standard deviation of values of the Gravity accelerometer in the X, Y and Z direction in the time domain

- 'timeDomainGravityAccelerometerStandardDeviationX'
- 'timeDomainGravityAccelerometerStandardDeviationY'
- 'timeDomainGravityAccelerometerStandardDeviationZ'

### Mean values of jerk in the X, Y and Z direction in the time domain

- 'timeDomainBodyAccelerometerJerkMeanX'
- 'timeDomainBodyAccelerometerJerkMeanY'
- 'timeDomainBodyAccelerometerJerkMeanZ'

### Standard deviation of jerk in the X, Y and Z direction in the time domain

- 'timeDomainBodyAccelerometerJerkStandardDeviationX'
- 'timeDomainBodyAccelerometerJerkStandardDeviationY'
- 'timeDomainBodyAccelerometerJerkStandardDeviationZ'

### Mean values of the body gyroscope in the X, Y and Z direction in the time domain

- 'timeDomainBodyGyroscopeMeanX'
- 'timeDomainBodyGyroscopeMeanY'
- 'timeDomainBodyGyroscopeMeanZ'

### Standard deviation of values of the body gyroscope in the X, Y and Z direction in the time domain

- 'timeDomainBodyGyroscopeStandardDeviationX'
- 'timeDomainBodyGyroscopeStandardDeviationY'
- 'timeDomainBodyGyroscopeStandardDeviationZ'

### Mean values of the body gyroscope jerk in the X, Y and Z direction in the time domain

- 'timeDomainBodyGyroscopeJerkMeanX'
- 'timeDomainBodyGyroscopeJerkMeanY'
- 'timeDomainBodyGyroscopeJerkMeanZ'

### Standard deviation of values of the body gyroscope jerk in the X, Y and Z direction in the time domain

- 'timeDomainBodyGyroscopeJerkStandardDeviationX'
- 'timeDomainBodyGyroscopeJerkStandardDeviationY'
- 'timeDomainBodyGyroscopeJerkStandardDeviationZ'

### Body accelerometer magnitude mean and standard deviation in the time domain

- 'timeDomainBodyAccelerometerMagnitudeMean'
- 'timeDomainBodyAccelerometerMagnitudeStandardDeviation'

### Gravity accelerometer magnitude mean and standard deviation in the time domain

- 'timeDomainGravityAccelerometerMagnitudeMean'
- 'timeDomainGravityAccelerometerMagnitudeStandardDeviation'

### Body accelerometer jerk magnitude mean and standard deviation in the time domain

- 'timeDomainBodyAccelerometerJerkMagnitudeMean'
- 'timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation'

### Body Gyroscope magnitude mean and standard deviation in the time domain

- 'timeDomainBodyGyroscopeMagnitudeMean'
- 'timeDomainBodyGyroscopeMagnitudeStandardDeviation'

### Body gyroscope jerk magnitude mean and standard deviation in the time domain

- 'timeDomainBodyGyroscopeJerkMagnitudeMean'
- 'timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation'

### Mean values of the body accelerometer in the X, Y and Z direction in the frequency domain

- 'frequencyDomainBodyAccelerometerMeanX'
- 'frequencyDomainBodyAccelerometerMeanY'
- 'frequencyDomainBodyAccelerometerMeanZ'

### Standard deviation of values of the body accelerometer in the X, Y and Z direction in the frequency domain

- 'frequencyDomainBodyAccelerometerStandardDeviationX'
- 'frequencyDomainBodyAccelerometerStandardDeviationY'
- 'frequencyDomainBodyAccelerometerStandardDeviationZ'

### Body accelerometer mean frequency in X, Y and Z in the frequency domain

- 'frequencyDomainBodyAccelerometerMeanFrequencyX'
- 'frequencyDomainBodyAccelerometerMeanFrequencyY'
- 'frequencyDomainBodyAccelerometerMeanFrequencyZ'

### Mean values of body accelerometer jerk in X, Y and Z in the frequency domain

- 'frequencyDomainBodyAccelerometerJerkMeanX'
- 'frequencyDomainBodyAccelerometerJerkMeanY'
- 'frequencyDomainBodyAccelerometerJerkMeanZ'

### Standard deviation of values of body accelerometer jerk in X, Y and Z in the frequency domain

- 'frequencyDomainBodyAccelerometerJerkStandardDeviationX'
- 'frequencyDomainBodyAccelerometerJerkStandardDeviationY'
- 'frequencyDomainBodyAccelerometerJerkStandardDeviationZ'

### Body accelerometer mean frequency jerk in X, Y and Z in the frequency domain

- 'frequencyDomainBodyAccelerometerJerkMeanFrequencyX'
- 'frequencyDomainBodyAccelerometerJerkMeanFrequencyY'
- 'frequencyDomainBodyAccelerometerJerkMeanFrequencyZ'

### Mean values of body gyroscope in X, Y and Z in the frequency domain

- 'frequencyDomainBodyGyroscopeMeanX'
- 'frequencyDomainBodyGyroscopeMeanY'
- 'frequencyDomainBodyGyroscopeMeanZ'

### Standard deviation of body gyroscope in X, Y and Z in the frequency domain

- 'frequencyDomainBodyGyroscopeStandardDeviationX'
- 'frequencyDomainBodyGyroscopeStandardDeviationY'
- 'frequencyDomainBodyGyroscopeStandardDeviationZ'

### Body gyroscope mean frequency in X, Y and Z in the frequency domain

- 'frequencyDomainBodyGyroscopeMeanFrequencyX'
- 'frequencyDomainBodyGyroscopeMeanFrequencyY'
- 'frequencyDomainBodyGyroscopeMeanFrequencyZ'

### Body accelerometer magnitude mean, standard dev and mean frequency in the frequency domain

- 'frequencyDomainBodyAccelerometerMagnitudeMean'
- 'frequencyDomainBodyAccelerometerMagnitudeStandardDeviation'
- 'frequencyDomainBodyAccelerometerMagnitudeMeanFrequency'

### Body accelerometer jerk magnitude mean, standard dev and mean frequency in the frequency domain

- 'frequencyDomainBodyAccelerometerJerkMagnitudeMean'
- 'frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation'
- 'frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency'

### Body gyroscope magnitude mean, standard dev and mean frequency in the frequency domain

- 'frequencyDomainBodyGyroscopeMagnitudeMean'
- 'frequencyDomainBodyGyroscopeMagnitudeStandardDeviation'
- 'frequencyDomainBodyGyroscopeMagnitudeMeanFrequency'

### Body gyroscope jerk magnitude mean, standard dev and mean frequency in the frequency domain

- 'frequencyDomainBodyGyroscopeJerkMagnitudeMean'
- 'frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation'
- 'frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency'
