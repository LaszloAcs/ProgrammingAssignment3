# Program Name: run_analysis.R
# Program assumes the data has been unzipped and lies in the same 
# directory as the program as well as the "train" and "test" 
# folders
#
# Assignment Code by Laszlo Acs

# Check for required package
if (!("plyr" %in% rownames(installed.packages())) ) {
  print("This program requires \"plyr\" package. Please install before continuing")
}
else {
	library(plyr)

	# ---------------------------------------------------------------
	# Step 1 - Merge training and test sets to create one data set
	#          NOTE: I chose to keep these separate until Step 4 as
	#				 it seemed more natural in logic flow
	# ---------------------------------------------------------------

	# read the data
	xTrain <- read.table("train/X_train.txt")
	yTrain <- read.table("train/y_train.txt")
	subjTrain <- read.table("train/subject_train.txt")

	xTest <- read.table("test/X_test.txt")
	yTest <- read.table("test/y_test.txt")
	subjTest <- read.table("test/subject_test.txt")

	# create 'x' data set
	xData <- rbind(xTrain, xTest)

	# create 'y' data set
	yData <- rbind(yTrain, yTest)

	# create 'subject' data set
	subjData <- rbind(subjTrain, subjTest)

	# apply a column name
	names(subjData) <- "subject"

	# ---------------------------------------------------------------
	# Step 2 - Extract only the measurements on the mean and 
	#          standard deviation for each measurement
	# ---------------------------------------------------------------

	features <- read.table("features.txt")

	# get only columns with mean() or std() in their names
	meanStdCols <- grep("-(mean|std)\\(\\)", features[, 2])

	# subset the desired columns
	xData <- xData[, meanStdCols]

	# correct column names from read data
	names(xData) <- features[meanStdCols, 2]

	# ---------------------------------------------------------------
	# Step 3 - provide descriptive activity names to name the 
	#		   activities in the data set
	# ---------------------------------------------------------------

	activities <- read.table("activity_labels.txt")

	# Replace values with correct activity names
	yData[, 1] <- activities[yData[, 1], 2]

	# apply a column name
	names(yData) <- "activity"

	# ---------------------------------------------------------------
	# Step 4 - label the data set with descriptive variable names
	# ---------------------------------------------------------------

	# bind all data into a single data set
	allData <- cbind(xData, yData, subjData)

	# ---------------------------------------------------------------
	# Step 5 - Create a second, independent tidy data set with the 
	#          average of each variable for each activity and each 
	#		   subject
	# ---------------------------------------------------------------

	# Calculate means of 66 columns and skipping the first two
	avgData <- ddply(allData, .(subject, activity), function(x) colMeans(x[, 1:66]))

	write.table(avgData, "avgData.txt", row.name=FALSE)
}