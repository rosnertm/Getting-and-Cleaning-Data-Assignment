==================================================================
# Code Book for Final Assignment for Getting and Cleaning Data
## Version 1.0
==================================================================
## Tamara Rosner
==================================================================

### IDENTIFIER VARIABLES
subject: column position 1<br />
    Subject number
	Integer designating a particular subject


activity: column position 2
    Activity performed by subject (6 total)
	laying
	sitting
	standing
	walking
	walking_upstairs
	walking_downstairs

### NOTE: The rest of the listed variables represent averages for each subject and activity. For example, multiple measurements were taken from subject 1 while sitting; the variables here are the average of all those measurements of that particular variable.

### BODY ACCELRATION VARIABLES
tBodyAcc-mean()-X: column position 3
    The average body accelaration signal along the X axis

tBodyAcc-mean()-Y: column position 4
    The average body accelaration signal along the y axis

tBodyAcc-mean()-Z: column position 5
    The average body accelaration signal along the z axis

tBodyAcc-std()-X: column position 6
    The standard deviation of the body accelaration signal along the X axis

tBodyAcc-std()-Y: column position 7
    The standard deviation of the body accelaration signal along the y axis

tBodyAcc-std()-Z: column position 8
    The standard deviation of the body accelaration signal along the z axis



### GRAVITY ACCELRATION VARIABLES
tGravityAcc-mean()-X: column position 9
    The average gravity accelaration signal along the X axis

tGravityAcc-mean()-Y: column position 10
    The average gravity accelaration signal along the y axis

tGravityAcc-mean()-Z: column position 11
    The average gravity accelaration signal along the z axis

tGravityAcc-std()-X: column position 12
    The standard deviation of the gravity accelaration signal along the X axis

tGravityAcc-std()-Y: column position 13
    The standard deviation of the gravity accelaration signal along the y axis

tGravityAcc-std()-Z: column position 14
    The standard deviation of the gravity accelaration signal along the z axis



### BODY JERK ACCELRATION VARIABLES
tBodyAccJerk-mean()-X: column position 15
    The average body jerk accelaration signal along the X axis

tBodyAccJerk-mean()-Y: column position 16
    The average body jerk accelaration signal along the y axis

tBodyAccJerk-mean()-Z: column position 17
    The average body jerk accelaration signal along the z axis

tBodyAccJerk-std()-X: column position 18
    The standard deviation of the body jerk accelaration signal along the X axis

tBodyAccJerk-std()-Y: column position 19
    The standard deviation of the body jerk accelaration signal along the y axis

tBodyAccJerk-std()-Z: column position 20
    The standard deviation of the body jerk accelaration signal along the z axis



### BODY ORIENTATION VARIABLES
tBodyGyro-mean()-X: column position 21
    The average body orientation signal along the X axis

tBodyGyro-mean()-Y: column position 22
    The average body orientation signal along the y axis

tBodyGyro-mean()-Z: column position 23
    The average body orientation signal along the z axis

tBodyGyro-std()-X: column position 24
    The standard deviation of the body orientation signal along the X axis

tBodyGyro-std()-Y: column position 25
    The standard deviation of the body orientation signal along the y axis

tBodyGyro-std()-Z: column position 26
    The standard deviation of the body orientation signal along the z axis



### BODY JERK ORIENTATION VARIABLES
tBodyGyroJerk-mean()-X: column position 27
    The average body jerk orientation signal along the X axis

tBodyGyroJerk-mean()-Y: column position 28
    The average body jerk orientation signal along the y axis

tBodyGyroJerk-mean()-Z: column position 29
    The average body jerk orientation signal along the z axis

tBodyGyroJerk-std()-X: column position 30
    The standard deviation of the body jerk orientation signal along the X axis

tBodyGyroJerk-std()-Y: column position 31
    The standard deviation of the body jerk orientation signal along the y axis

tBodyGyroJerk-std()-Z: column position 32
    The standard deviation of the body jerk orientation signal along the z axis



### VARIABLES LOOKING AT THE MAGNITUDE OF THE 3D SIGNALS (X, Y, AND Z) INDICATED ABOVE
tBodyAccMag-mean(): column position 33
    The magnitude of the average body acceleration based on 3D signals

tBodyAccMag-std(): column position 34
    The magnitude of the standard deviation of the body acceleration based on 3D signals


tGravityAccMag-mean(): column position 35
    The magnitude of the average gravity acceleration based on 3D signals

tGravityAccMag-std(): column position 36
    The magnitude of the standard deviation of the gravity acceleration based on 3D signals


tBodyAccJerkMag-mean(): column position 37
    The magnitude of the average body jerk acceleration based on 3D signals

tBodyAccJerkMag-std(): column position 38
    The magnitude of the standard deviation of the body jerk acceleration based on 3D signals


tBodyGyroMag-mean(): column position 39
    The magnitude of the average body orientation based on 3D signals

tBodyGyroMag-std(): column position 40
    The magnitude of the standard deviation of the body orientation based on 3D signals


tBodyGyroJerkMag-mean(): column position 41
    The magnitude of the average body jerk orientation based on 3D signals

tBodyGyroJerkMag-std(): column position 42
    The magnitude of the standard deviation of the body jerk orientation based on 3D signals



### FOURIER TRANSFORM OF BODY ACCELRATION VARIABLES 
fBodyAcc-mean()-X: column position 43
    Fourier transform of the average body accelaration signal along the X axis

fBodyAcc-mean()-Y: column position 44
    Fourier transform of the average body accelaration signal along the y axis

fBodyAcc-mean()-Z: column position 45
    Fourier transform of the average body accelaration signal along the z axis

fBodyAcc-std()-X: column position 46
    Fourier transform of the standard deviation of the body accelaration signal along the X axis

fBodyAcc-std()-Y: column position 47
    Fourier transform of the standard deviation of the body accelaration signal along the y axis

fBodyAcc-std()-Z: column position 48
    Fourier transform of the standard deviation of the body accelaration signal along the z axis



### FOURIER TRANSFORM OF BODY JERK ACCELRATION VARIABLES
fBodyAccJerk-mean()-X: column position 49
    Fourier transform of the average body jerk accelaration signal along the X axis

fBodyAccJerk-mean()-Y: column position 50
    Fourier transform of the average body jerk accelaration signal along the y axis

fBodyAccJerk-mean()-Z: column position 51
    Fourier transform of the average body jerk accelaration signal along the z axis

fBodyAccJerk-std()-X: column position 52
    Fourier transform of the standard deviation of the body jerk accelaration signal along the X axis

fBodyAccJerk-std()-Y: column position 53
    Fourier transform of the standard deviation of the body jerk accelaration signal along the y axis

fBodyAccJerk-std()-Z: column position 54
    Fourier transform of the standard deviation of the body jerk accelaration signal along the z axis



### FOURIER TRANSFORM OF BODY ORIENTATION VARIABLES
fBodyGyro-mean()-X: column position 55
    Fourier transform of the average body orientation signal along the X axis

fBodyGyro-mean()-Y: column position 56
    Fourier transform of the average body orientation signal along the y axis

fBodyGyro-mean()-Z: column position 57
    Fourier transform of the average body orientation signal along the z axis

fBodyGyro-std()-X: column position 58
    Fourier transform of the standard deviation of the body orientation signal along the X axis

fBodyGyro-std()-Y: column position 59
    Fourier transform of the standard deviation of the body orientation signal along the y axis

fBodyGyro-std()-Z: column position 60
    Fourier transform of the standard deviation of the body orientation signal along the z axis



### FOURIER TRANSFORM OF VARIABLES LOOKING AT THE MAGNITUDE OF THE 3D SIGNALS (X, Y, AND Z) INDICATED ABOVE
fBodyAccMag-mean(): column position 61
    Fourier transform of the magnitude of the average body acceleration based on 3D signals

fBodyAccMag-std(): column position 62
    Fourier transform of the magnitude of the standard deviation of the body acceleration based on 3D signals


fBodyAccJerkMag-mean(): column position 63
    Fourier transform of the magnitude of the average body jerk acceleration based on 3D signals

fBodyAccJerkMag-std(): column position 64
    Fourier transform of the magnitude of the standard deviation of the body jerk acceleration based on 3D signals


fBodyGyroMag-mean(): column position 65
    Fourier transform of the magnitude of the average body orientation based on 3D signals

fBodyGyroMag-std(): column position 66
    Fourier transform of the magnitude of the standard deviation of the body orientation based on 3D signals


fBodyGyroJerkMag-mean(): column position 67
    Fourier transform of the magnitude of the average body jerk orientation based on 3D signals

fBodyGyroJerkMag-std(): column position 68
    Fourier transform of the magnitude of the standard deviation of the body jerk orientation based on 3D signals
