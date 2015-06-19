# Introduction

Initial raw data was downloaded and unzipped from [the Machine Learning Repository]( http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
The script **run_analysis.R** was placed in the unzipped folder containing 
the raw data.  The data dictionary for the raw data is available at the link above.

#Process

The script **run_analysis.R** performs the 5 steps described in the course project's definition in the following order:
	1) Merges the training and test sets to create a single data set
	2) Extracts only the measurements on the mean and standard deviation
	   for each measurement
	3) Uses descriptive activity names to name the activities in the data 
	   set
	4) Appropriately labels the data set with descriptive names
	5) From the data set in step 4, creates a second, independent tidy 
	   data set with the average of each variable for each activity and 
	   each subject and saves this to avgData.txt

* I modified the original step 1 in that all the similar data is merged 
  using the `rbind()` function. But, I keep the "X" data, "Y" data and "Subject" data separate until later.  This seemed most logical.
* Next the script filters for all columns with the mean and standard 
  deviation measures from the whole dataset. After extracting these 
  columns using a subset function, the columns are named using the data 
  from the **features.txt** file.
* Then the script pulls in the activity names and IDs from **activity_labels.txt** 
  and substitutes the names for their values in the dataset.
* The whole dataset is finally combined and all columns are named.
* Finally, a new dataset is created by calculating the average measures for 
  each subject and activity type (30 subjects * 6 activities = 180 rows). This 
  dataset is output as a file called **avgData.txt**, and has been uploaded to 
  this repository.

# Variables

* `xTrain`, `yTrain`, `xTest`, `yTest`, `subjTrain` and `subjTest` 
   contain the read-in data from the downloaded files.
* `xData`, `yData` and `subjData` merge the 'X', 'Y' and 'Subject' datasets 
  for further analysis.
* `features` contains the column names for the `xData` dataset.  This is 
  applied to the column names stored in `meanStdCols`, a numeric vector 
  used to extract the filtered data described above.
* A similar approach is taken with activity names through the `activities` variable.
* `allData` merges `xData`, `yData` and `subjData` in a big dataset.
* Finally, `avgData` is derived having averages using the ddply() and colMeans()
  functions which is then stored in a text file. 
