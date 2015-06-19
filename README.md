## Programming Assignment 3

The goal is to prepare tidy data that can be used for later analysis. 
This assignment will be graded by peers on a series of yes/no questions 
related to the project. Student will be required to submit: 
     1) a tidy data set as described below, 
	 2) a link to a Github repository with a script for performing the 
	    analysis, 
	 3) a code book that describes the variables, the data, and any 
	    transformations or work that was performed to clean up the data 
		called CodeBook.md, and
	 4) a README.md in the repo with your scripts that explains how all 
	    of the scripts work and how they are connected.

## Intro

This repository contains 4 files:
    - README.md
	- CodeBook.md
	- run_analysis.R
	- avgData.txt

You are now reading requirement #4 - the **README.md** file.

The **CodeBook.md** contains a description of all variables, data and any
work that was done on the raw downloaded data prior to running the script

The **run_analysis.R** script performs the following steps as outlined in 
the assignment instructions:
	1) Merges the training and test sets to create a single data set
	2) Extracts only the measurements on the mean and standard deviation
	   for each measurement
	3) Uses descriptive activity names to name the activities in the data 
	   set
	4) Appropriately labels the data set with descriptive names
	5) From the data set in step 4, creates a second, independent tidy 
	   data set with the average of each variable for each activity and 
	   each subject

Finally, the **avgData.txt** file is the final result of step 5 above
	
##Details
	
The *run_analysis.R* script reads data from the dataset downloaded and 
unzipped from [the Machine Learning Repository]( http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and produces a new tidy dataset. The data in the dataset has been taken 
from experiments carried out with a group of 30 volunteers within an age 
bracket of 19-48 years. Each person performed six activities (WALKING, 
WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing 
a smartphone (Samsung Galaxy S II) on the waist. Using its embedded 
accelerometer and gyroscope, 3-axial linear acceleration and 3-axial 
angular velocity at a constant rate of 50Hz data were captured. The 
obtained dataset was randomly partitioned into two sets, where 70% of 
the volunteers was selected for generating the training data and 30% the 
test data.

The zip file (not included here) expands into the following files:
==============================================
	- 'README.txt'
	- 'features_info.txt': Shows information about the variables used on 
	   the feature vector.
	- 'features.txt': List of all features.
	- 'activity_labels.txt': Links the class labels with their activity name.
	- 'train/X_train.txt': Training set.
	- 'train/y_train.txt': Training labels.
	- 'test/X_test.txt': Test set.
	- 'test/y_test.txt': Test labels.
	- 'train/subject_train.txt': Each row identifies the subject who 
	   performed the activity for each window sample. 
	   Its range is from 1 to 30. 
	- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration 
	   signal from the smartphone accelerometer X axis in standard 
	   gravity units 'g'. Every row shows a 128 element vector. The 
	   same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
	- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration 
	   signal obtained by subtracting the gravity from the total 
	   acceleration. 
	- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity 
	   vector measured by the gyroscope for each window sample. The units 
	   are radians/second. 

##Instructions
The *run_analysis.R* script file must be run in the downloaded and unzipped 
folder containing the data from the archive linked to above.

Source of Data:
=================
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
	   
	   