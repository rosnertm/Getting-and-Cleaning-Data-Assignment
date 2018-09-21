==================================================================
# Code Book for Final Assignment for Getting and Cleaning Data
## Version 1.0
==================================================================
## Tamara Rosner
==================================================================

### IDENTIFIER VARIABLES
subject: column position 1<br />
    Subject number<br />
	Integer designating a particular subject<br />


activity: column position 2<br />
    Activity performed by subject (6 total)<br />
	laying<br />
	sitting<br />
	standing<br />
	walking<br />
	walking_upstairs<br />
	walking_downstairs<br />

### NOTE: The rest of the listed variables represent averages for each subject and activity. For example, multiple measurements were taken from subject 1 while sitting; the variables here are the average of all those measurements of that particular variable.

### BODY ACCELRATION VARIABLES
tBodyAcc-mean()-X: column position 3<br />
    The average body accelaration signal along the X axis

tBodyAcc-mean()-Y: column position 4<br />
    The average body accelaration signal along the y axis

tBodyAcc-mean()-Z: column position 5<br />
    The average body accelaration signal along the z axis

tBodyAcc-std()-X: column position 6<br />
    The standard deviation of the body accelaration signal along the X axis

tBodyAcc-std()-Y: column position 7<br />
    The standard deviation of the body accelaration signal along the y axis

tBodyAcc-std()-Z: column position 8<br />
    The standard deviation of the body accelaration signal along the z axis



### GRAVITY ACCELRATION VARIABLES
tGravityAcc-mean()-X: column position 9<br />
    The average gravity accelaration signal along the X axis

tGravityAcc-mean()-Y: column position 10<br />
    The average gravity accelaration signal along the y axis

tGravityAcc-mean()-Z: column position 11<br />
    The average gravity accelaration signal along the z axis

tGravityAcc-std()-X: column position 12<br />
    The standard deviation of the gravity accelaration signal along the X axis

tGravityAcc-std()-Y: column position 13<br />
    The standard deviation of the gravity accelaration signal along the y axis

tGravityAcc-std()-Z: column position 14<br />
    The standard deviation of the gravity accelaration signal along the z axis



### BODY JERK ACCELRATION VARIABLES
tBodyAccJerk-mean()-X: column position 15<br />
    The average body jerk accelaration signal along the X axis

tBodyAccJerk-mean()-Y: column position 16<br />
    The average body jerk accelaration signal along the y axis

tBodyAccJerk-mean()-Z: column position 17<br />
    The average body jerk accelaration signal along the z axis

tBodyAccJerk-std()-X: column position 18<br />
    The standard deviation of the body jerk accelaration signal along the X axis

tBodyAccJerk-std()-Y: column position 19<br />
    The standard deviation of the body jerk accelaration signal along the y axis

tBodyAccJerk-std()-Z: column position 20<br />
    The standard deviation of the body jerk accelaration signal along the z axis



### BODY ORIENTATION VARIABLES
tBodyGyro-mean()-X: column position 21<br />
    The average body orientation signal along the X axis

tBodyGyro-mean()-Y: column position 22<br />
    The average body orientation signal along the y axis

tBodyGyro-mean()-Z: column position 23<br />
    The average body orientation signal along the z axis

tBodyGyro-std()-X: column position 24<br />
    The standard deviation of the body orientation signal along the X axis

tBodyGyro-std()-Y: column position 25<br />
    The standard deviation of the body orientation signal along the y axis

tBodyGyro-std()-Z: column position 26<br />
    The standard deviation of the body orientation signal along the z axis



### BODY JERK ORIENTATION VARIABLES
tBodyGyroJerk-mean()-X: column position 27<br />
    The average body jerk orientation signal along the X axis

tBodyGyroJerk-mean()-Y: column position 28<br />
    The average body jerk orientation signal along the y axis

tBodyGyroJerk-mean()-Z: column position 29<br />
    The average body jerk orientation signal along the z axis

tBodyGyroJerk-std()-X: column position 30<br />
    The standard deviation of the body jerk orientation signal along the X axis

tBodyGyroJerk-std()-Y: column position 31<br />
    The standard deviation of the body jerk orientation signal along the y axis

tBodyGyroJerk-std()-Z: column position 32<br />
    The standard deviation of the body jerk orientation signal along the z axis



### VARIABLES LOOKING AT THE MAGNITUDE OF THE 3D SIGNALS (X, Y, AND Z) INDICATED ABOVE
tBodyAccMag-mean(): column position 33<br />
    The magnitude of the average body acceleration based on 3D signals

tBodyAccMag-std(): column position 34<br />
    The magnitude of the standard deviation of the body acceleration based on 3D signals


tGravityAccMag-mean(): column position 35<br />
    The magnitude of the average gravity acceleration based on 3D signals

tGravityAccMag-std(): column position 36<br />
    The magnitude of the standard deviation of the gravity acceleration based on 3D signals


tBodyAccJerkMag-mean(): column position 37<br />
    The magnitude of the average body jerk acceleration based on 3D signals

tBodyAccJerkMag-std(): column position 38<br />
    The magnitude of the standard deviation of the body jerk acceleration based on 3D signals


tBodyGyroMag-mean(): column position 39<br />
    The magnitude of the average body orientation based on 3D signals

tBodyGyroMag-std(): column position 40<br />
    The magnitude of the standard deviation of the body orientation based on 3D signals


tBodyGyroJerkMag-mean(): column position 41<br />
    The magnitude of the average body jerk orientation based on 3D signals

tBodyGyroJerkMag-std(): column position 42<br />
    The magnitude of the standard deviation of the body jerk orientation based on 3D signals



### FOURIER TRANSFORM OF BODY ACCELRATION VARIABLES 
fBodyAcc-mean()-X: column position 43<br />
    Fourier transform of the average body accelaration signal along the X axis

fBodyAcc-mean()-Y: column position 44<br />
    Fourier transform of the average body accelaration signal along the y axis

fBodyAcc-mean()-Z: column position 45<br />
    Fourier transform of the average body accelaration signal along the z axis

fBodyAcc-std()-X: column position 46<br />
    Fourier transform of the standard deviation of the body accelaration signal along the X axis

fBodyAcc-std()-Y: column position 47<br />
    Fourier transform of the standard deviation of the body accelaration signal along the y axis

fBodyAcc-std()-Z: column position 48<br />
    Fourier transform of the standard deviation of the body accelaration signal along the z axis



### FOURIER TRANSFORM OF BODY JERK ACCELRATION VARIABLES
fBodyAccJerk-mean()-X: column position 49<br />
    Fourier transform of the average body jerk accelaration signal along the X axis

fBodyAccJerk-mean()-Y: column position 50<br />
    Fourier transform of the average body jerk accelaration signal along the y axis

fBodyAccJerk-mean()-Z: column position 51<br />
    Fourier transform of the average body jerk accelaration signal along the z axis

fBodyAccJerk-std()-X: column position 52<br />
    Fourier transform of the standard deviation of the body jerk accelaration signal along the X axis

fBodyAccJerk-std()-Y: column position 53<br />
    Fourier transform of the standard deviation of the body jerk accelaration signal along the y axis

fBodyAccJerk-std()-Z: column position 54<br />
    Fourier transform of the standard deviation of the body jerk accelaration signal along the z axis



### FOURIER TRANSFORM OF BODY ORIENTATION VARIABLES
fBodyGyro-mean()-X: column position 55<br />
    Fourier transform of the average body orientation signal along the X axis

fBodyGyro-mean()-Y: column position 56<br />
    Fourier transform of the average body orientation signal along the y axis

fBodyGyro-mean()-Z: column position 57<br />
    Fourier transform of the average body orientation signal along the z axis

fBodyGyro-std()-X: column position 58<br />
    Fourier transform of the standard deviation of the body orientation signal along the X axis

fBodyGyro-std()-Y: column position 59<br />
    Fourier transform of the standard deviation of the body orientation signal along the y axis

fBodyGyro-std()-Z: column position 60<br />
    Fourier transform of the standard deviation of the body orientation signal along the z axis



### FOURIER TRANSFORM OF VARIABLES LOOKING AT THE MAGNITUDE OF THE 3D SIGNALS (X, Y, AND Z) INDICATED ABOVE
fBodyAccMag-mean(): column position 61<br />
    Fourier transform of the magnitude of the average body acceleration based on 3D signals

fBodyAccMag-std(): column position 62<br />
    Fourier transform of the magnitude of the standard deviation of the body acceleration based on 3D signals


fBodyAccJerkMag-mean(): column position 63<br />
    Fourier transform of the magnitude of the average body jerk acceleration based on 3D signals

fBodyAccJerkMag-std(): column position 64<br />
    Fourier transform of the magnitude of the standard deviation of the body jerk acceleration based on 3D signals


fBodyGyroMag-mean(): column position 65<br />
    Fourier transform of the magnitude of the average body orientation based on 3D signals

fBodyGyroMag-std(): column position 66<br />
    Fourier transform of the magnitude of the standard deviation of the body orientation based on 3D signals


fBodyGyroJerkMag-mean(): column position 67<br />
    Fourier transform of the magnitude of the average body jerk orientation based on 3D signals

fBodyGyroJerkMag-std(): column position 68<br />
    Fourier transform of the magnitude of the standard deviation of the body jerk orientation based on 3D signals
