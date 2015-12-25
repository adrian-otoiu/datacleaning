### Codebook for finaltable.txt file, project getting and cleaning data

General information: the dataset contains 68 variables and 180 observations, with no missing or NA values.

Naming conventions for the numeric variables:
-	Prefix t stands for time (e.g in variable tBodyAcc_MEAN_X.mean) , f stands for frequency (e.g. tGravityAccMag_STD.mean)
-	Name parts Body and Gravity stand for the body motion and, respectively, gravitational components
-	Acc and Gyro name parts stand for body acceleration and gravity features.
-	Jerk, where present, stands for variables which measure the jerk of the movements.
-	Wherever present Mag stands for the magnitude of these signals.
-	Wherever present letters X, Y and Z stand for the appropriate axis on which movements are measured.

Variables/fields:

1)	SubjectID  
     
Description: Ids of the subjects included in the study  
Type: integer	
Values: 1-30	   

2)	 Activity   
                   
Description: activity type	
Type: text	

Values/Labels:	
WALKING		
WALKING_UPSTAIRS	
WALKING_DOWNSTAIRS	
SITTING		
STANDING	
LAYING

3)	tBodyAcc_MEAN_X.mean 	

Description: 	Mean of the mean  of time for Body accelerometer signal  , dimension x	 
type: 	numeric 	
Range: 	 0.2216 - 0.3015

4)	tBodyAcc_MEAN_Y.mean	

Description: 	Mean of the mean of time for Body accelerometer signal  , dimension y	 
type: 	numeric 	 
Range: 	 -0.040514 - -0.001308

5)	tBodyAcc_MEAN_Z.mean	

Description: 	Mean of the mean of time for Body accelerometer signal  , dimension z	 
type: 	numeric 	 
Range: 	 -0.15251 - -0.07538

6)	tGravityAcc_MEAN_X.mean	

Description: 	Mean of the mean of time for Gravity accelerometer signal  , dimension x	 
type: 	numeric 	 
Range: 	 -0.68 - 0.9745

7)	tGravityAcc_MEAN_Y.mean
	
Description: 	Mean of the mean of time for Gravity accelerometer signal  , dimension y	 
type: 	numeric 	 
Range: 	 -0.47989 - 0.95659

8)	tGravityAcc_MEAN_Z.mean	

Description: 	Mean of the mean of time for Gravity accelerometer signal  , dimension z	 
type: 	numeric 	 
Range: 	 -0.49509 - 0.95787

9)	tBodyAccJerk_MEAN_X.mean	

Description: 	Mean of the mean of time for Body accelerometer jerk , dimension x	 
type: 	numeric 	 
Range: 	 0.04269 - 0.13019

10)	tBodyAccJerk_MEAN_Y.mean	

Description: 	Mean of the mean of time for Body accelerometer jerk , dimension y	 
type: 	numeric 	 
Range: 	 -0.0386872 - 0.0568186

11)	tBodyAccJerk_MEAN_Z.mean	

Description: 	Mean of the mean of time for Body accelerometer jerk , dimension z	
type: 	numeric 	 
Range: 	 -0.067458 - 0.038053

12)	tBodyGyro_MEAN_X.mean	

Description: 	Mean of the mean of time for Body gyroscope signal , dimension x	 
type: 	numeric 	 
Range: 	 -0.20578 - 0.1927

13)	tBodyGyro_MEAN_Y.mean	

Description: 	Mean of the mean of time for Body gyroscope signal , dimension y	 
type: 	numeric 	 
Range: 	 -0.20421 - 0.02747

14)	tBodyGyro_MEAN_Z.mean	

Description: 	Mean of the mean of time for Body gyroscope signal , dimension z	 
type: 	numeric 	 
Range: 	 -0.07245 - 0.1791

15)	tBodyGyroJerk_MEAN_X.mean	

Description: 	Mean of the mean of time for Body gyroscope jerk , dimension x	 
type: 	numeric 	 
Range: 	 -0.15721 - -0.02209

16)	tBodyGyroJerk_MEAN_Y.mean	

Description: 	Mean of the mean of time for Body gyroscope jerk , dimension y	 
type: 	numeric 	 
Range: 	 -0.07681 - -0.0132

17)	tBodyGyroJerk_MEAN_Z.mean	

Description: Mean of the mean of time for Body gyroscope jerk , dimension z	
type: 	numeric 	 
Range: 	 -0.0925 - -0.006941

18)	tBodyAccMag_MEAN.mean	

Description: 	Mean of the mean of time for Body accelerometer signal magnitude  
type: 	numeric 	 
Range: 	 -0.9865 - 0.6446

19)	tGravityAccMag_MEAN.mean	

Description: 	Mean of the mean of time for Gravity accelerometer signal magnitude  	 
type: 	numeric 	 
Range: 	 -0.9865 - 0.6446

20)	tBodyAccJerkMag_MEAN.mean	

Description: 	Mean of the mean of time for Body accelerometer jerk magnitude  	 
type: 	numeric 	 
Range: 	 -0.9928 - 0.4345

21)	tBodyGyroMag_MEAN.mean	

Description: 	Mean of the mean of time for Body gyroscope signal magnitude  	 
type: 	numeric 	 
Range: 	 -0.9807 - 0.418

22)	tBodyGyroJerkMag_MEAN.mean	

Description: 	Mean of the mean of time for Body gyroscope jerk magnitude  	 
type: 	numeric 	 
Range: 	 -0.99732 - 0.08758

23)	fBodyAcc_MEAN_X.mean	

Description: 	Mean of the mean of frequency domain signal for Body accelerometer signal , dimension x	 
type: 	numeric 	 
Range: 	 -0.9952 - 0.537

24)	fBodyAcc_MEAN_Y.mean	

Description: 	Mean of the mean of frequency domain signal for Body accelerometer signal , dimension y	 
type: 	numeric 	 
Range: 	 -0.98903 - 0.52419

25)	fBodyAcc_MEAN_Z.mean	

Description: 	Mean of the mean of frequency domain signal for Body accelerometer signal  , dimension z	 
type: 	numeric 	 
Range: 	 -0.9895 - 0.2807

26)	fBodyAccJerk_MEAN_X.mean	

Description: 	Mean of the mean of frequency domain signal for Body accelerometer jerk , dimension x	 
type: 	numeric 	 
Range: 	 -0.9946 - 0.4743

27)	fBodyAccJerk_MEAN_Y.mean	

Description: 	Mean of the mean of frequency domain signal for Body accelerometer jerk , dimension y	 
type: 	numeric 	 
Range: 	 -0.9894 - 0.2767

28)	fBodyAccJerk_MEAN_Z.mean	

Description: 	Mean of the mean of frequency domain signal for Body accelerometer jerk , dimension z	 
type: 	numeric 	 
Range: 	 -0.992 - 0.1578

29)	fBodyGyro_MEAN_X.mean	

Description: 	Mean of the mean of frequency domain signal for Body gyroscope signal , dimension x	
type: 	numeric 	 
Range: 	 -0.9931 - 0.475

30)	fBodyGyro_MEAN_Y.mean	

Description: 	Mean of the mean of frequency domain signal for Body gyroscope signal , dimension y	 type: 	numeric 	 
type: 	numeric 	
Range: 	 -0.994 - 0.3288

31)	fBodyGyro_MEAN_Z.mean	

Description: 	Mean of the mean of frequency domain signal for Body gyroscope signal , dimension z	 type: 	numeric 	 
type: 	numeric 	
Range: 	 -0.986 - 0.4924

32)	fBodyAccMag_MEAN.mean
	
Description: 	Mean of the mean of frequency domain signal for Body accelerometer signal magnitude  
type: 	numeric 	 
Range: 	 -0.9868 - 0.5866

33)	fBodyBodyAccJerkMag_MEAN.mean	

Description: 	Mean of the mean of frequency domain signal for Body accelerometer jerk magnitude  
type: 	numeric 	 
Range: 	 -0.994 - 0.5384

34)	fBodyBodyGyroMag_MEAN.mean	

Description: 	Mean of the mean of frequency domain signal for Body gyroscope signal magnitude  	 type: 	numeric 	 
type: 	numeric 	
Range: 	 -0.9865 - 0.204

35)	fBodyBodyGyroJerkMag_MEAN.mean	

Description: 	Mean of the mean of frequency domain signal for Body gyroscope jerk magnitude  	 type: 	numeric 	 
type: 	numeric 	
Range: 	 -0.9976 - 0.1466

36)	tBodyAcc_STD_X.mean	

Description: 	Mean of the standard deviation of time for Body accelerometer signal, dimension x	 type: 	numeric 	 
type: 	numeric 	
Range: 	 -0.9961 - 0.6269

37)	tBodyAcc_STD_Y.mean	

Description: 	Mean of the standard deviation of time for Body accelerometer signal, dimension y	 type: 	numeric 	 
type: 	numeric 	
Range: 	 -0.99024 - 0.61694

38)	tBodyAcc_STD_Z.mean
	
Description: 	Mean of the standard deviation of time for Body accelerometer signal, dimension z	 type: 	numeric 	 
type: 	numeric 	
Range: 	 -0.9877 - 0.609

39)	tGravityAcc_STD_X.mean	

Description: 	Mean of the standard deviation of time for Gravity accelerometer signal, dimension x	 type: 	numeric 	 
type: 	numeric 	
Range: 	 -0.9968 - -0.8296

40)	tGravityAcc_STD_Y.mean	

Description: 	Mean of the standard deviation of time for Gravity accelerometer signal, dimension y	 type: 	numeric 	 
type: 	numeric 	
Range: 	 -0.9942 - -0.6436

41)	tGravityAcc_STD_Z.mean	

Description: 	Mean of the standard deviation of time for Gravity accelerometer signal , dimension z	 type: 	numeric 	 
type: 	numeric 	
Range: 	 -0.991 - -0.6102

42)	tBodyAccJerk_STD_X.mean	

Description: 	Mean of the standard deviation of time for Body accelerometer jerk , dimension x	 type: 	numeric 	 
type: 	numeric 	
Range: 	 -0.9946 - 0.5443

43)	tBodyAccJerk_STD_Y.mean	

Description: 	Mean of the standard deviation of time for Body accelerometer jerk , dimension y	 type: 	numeric 	 
type: 	numeric 	
Range: 	 -0.9895 - 0.3553

44)	tBodyAccJerk_STD_Z.mean	

Description: 	Mean of the standard deviation of time for Body accelerometer jerk , dimension z	 type: 	numeric 	 
type: 	numeric 	
Range: 	 -0.99329 - 0.03102

45)	tBodyGyro_STD_X.mean	

Description: 	Mean of the standard deviation of time for Body gyroscope signal , dimension x	 
type: 	numeric 	 
Range: 	 -0.9943 - 0.2677

46)	tBodyGyro_STD_Y.mean	

Description: 	Mean of the standard deviation of time for Body gyroscope signal , dimension y	 
type: 	numeric 	 
Range: 	 -0.9942 - 0.4765

47)	tBodyGyro_STD_Z.mean	

Description: 	Mean of the standard deviation of time for Body gyroscope jerk , dimension z	 
type: 	numeric 	 
Range: 	 -0.9855 - 0.5649

48)	tBodyGyroJerk_STD_X.mean	

Description: 	Mean of the standard deviation of time for Body gyroscope jerk , dimension x	 
type: 	numeric 	 
Range: 	 -0.9965 - 0.1791

49)	tBodyGyroJerk_STD_Y.mean	
Description: 	Mean of the standard deviation of time for Body gyroscope jerk , dimension y	 
type: 	numeric 	 
Range: 	 -0.9971 - 0.2959

50)	tBodyGyroJerk_STD_Z.mean	

Description: 	Mean of the standard deviation of time for Body gyroscope jerk , dimension z	 
type: 	numeric 	 
Range: 	 -0.9954 - 0.1932

51)	tBodyAccMag_STD.mean	

Description: 	Mean of the standard deviation of time for Body accelerometer signal magnitude  	 type: 	numeric 	 
type: 	numeric 	
Range: 	 -0.9865 - 0.4284

52)	tGravityAccMag_STD.mean	

Description: 	Mean of the standard deviation of time for Gravity accelerometer signal magnitude  	 type: 	numeric 	 
type: 	numeric 	
Range: 	 -0.9865 - 0.4284

53)	tBodyAccJerkMag_STD.mean	

Description: 	Mean of the standard deviation of time for Body accelerometer jerk magnitude  	 type: 	numeric 	 
type: 	numeric 	
Range: 	 -0.9946 - 0.4506

54)	tBodyGyroMag_STD.mean	

Description: 	Mean of the standard deviation of time for Body gyroscope signal magnitude  	 
type: 	numeric 	 
Range: 	 -0.9814 - 0.3

55)	tBodyGyroJerkMag_STD.mean	

Description: 	Mean of the standard deviation of time for Body gyroscope jerk magnitude  	 
type: 	numeric 	 
Range: 	 -0.9977 - 0.2502

56)	fBodyAcc_STD_X.mean	

Description: 	Mean of the standard deviation of frequency domain signal for Body accelerometer signal, dimension x	 
type: 	numeric 	 
Range: 	 -0.9966 - 0.6585

57)	fBodyAcc_STD_Y.mean	

Description: 	Mean of the standard deviation of frequency domain signal for Body accelerometer signal  , dimension y	 
type: 	numeric 	 
Range: 	 -0.99068 - 0.56019

58)	fBodyAcc_STD_Z.mean	

Description: 	Mean of the standard deviation of frequency domain signal for Body accelerometer signal  , dimension z	 
type: 	numeric 	 
Range: 	 -0.9872 - 0.6871

59)	fBodyAccJerk_STD_X.mean	

Description: 	Mean of the standard deviation of frequency domain signal for Body accelerometer jerk , dimension x	 
type: 	numeric 	 
Range: 	 -0.9951 - 0.4768

60)	fBodyAccJerk_STD_Y.mean	

Description: 	Mean of the standard deviation of frequency domain signal for Body accelerometer jerk , dimension y	 
type: 	numeric 	 
Range: 	 -0.9905 - 0.3498

61)	fBodyAccJerk_STD_Z.mean	

Description: 	Mean of the standard deviation of frequency domain signal for Body accelerometer jerk , dimension z	 
type: 	numeric 	 
Range: 	 -0.993108 - -0.006236

62)	fBodyGyro_STD_X.mean	

Description: 	Mean of the standard deviation of frequency domain signal for Body gyroscope signal , dimension x	 
type: 	numeric 	 
Range: 	 -0.9947 - 0.1966

63)	fBodyGyro_STD_Y.mean	

Description: 	Mean of the standard deviation of frequency domain signal for Body gyroscope signal , dimension y	 
type: 	numeric 	 
Range: 	 -0.9944 - 0.6462

64)	fBodyGyro_STD_Z.mean	

Description: 	Mean of the standard deviation of frequency domain signal for Body gyroscope signal , dimension z	 
type: 	numeric 	 
Range: 	 -0.9867 - 0.5225

65)	fBodyAccMag_STD.mean
	
Description: 	Mean of the standard deviation of frequency domain signal for Body accelerometer signal magnitude  	 
type: 	numeric 	 
Range: 	 -0.9876 - 0.1787

66)	fBodyBodyAccJerkMag_STD.mean	

Description: 	Mean of the standard deviation of frequency domain signal for Body accelerometer jerk magnitude  	 
type: 	numeric 	 
Range: 	 -0.9944 - 0.3163

67)	fBodyBodyGyroMag_STD.mean	

Description: 	Mean of the standard deviation of frequency domain signal for Body gyroscope signal magnitude  	 
type: 	numeric 	 
Range: 	 -0.9815 - 0.2367

68)	fBodyBodyGyroJerkMag_STD.mean	

Description: 	Mean of the standard deviation of frequency domain signal for Body gyroscope jerk magnitude  	 
type: 	numeric 	 
Range: 	 -0.9976 - 0.2878

