Getting and Cleaning Data Project
=================================
**Human Activity Recognition Using Smartphones Subset**

**Version 1.0**

**Gonzalo PENA C.**

goanpeca@gmail.com

---------------------------------------------------

Introduction:
-------------
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 


Description of original dataset:
--------------------------------
The base data set used for this comes from the [UCI Machine Learning experiment](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The original dataset included the following statistics:
* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.

Description of process:
-----------------------
From the original data set a series of steps were followed in order to obtain a tidy data set for further postprocessing. To carry out this process the [run_analysis.R](https://github.com/goanpeca/coursera-data-science-getting-and-cleaning-data/blob/master/run_analysis.R) script was used. The steps go from downloading the original dataset, extracting it and the performing reshaping and postprocessing. The different steps are described inside [run_analysis.R](https://github.com/goanpeca/coursera-data-science-getting-and-cleaning-data/blob/master/run_analysis.R) but a general overview includes:
- Merging the training and the test subjects into a single dataset.
- Extracting only the measurements corresponding to the mean (Mean) and standard deviation (std) for each available measurement. 
- Joining the subjects with the activities performed by the subjects with the measurements from the dataset.
- Evaluating the mean per subject and activity of the available meassurements and sorting by subject and activity.
- Saving the resulting dataset in a text file.

Tidy dataset:
-------------
The resulting dataset [tidy.txt](https://github.com/goanpeca/coursera-data-science-getting-and-cleaning-data/blob/master/tidy.txt) contains 66 columns of averaged information (per subject and activity) corresponding to the mean and std of different meassurements for a total of 180 observations (rows). These observations include meassurements in **Time** and **Frequency** of magnitude (**Mag**) and components in **X**,**Y** and **Z** direction for the linear acceleration (**Acc**), angular acceleration (**Gyro**), linear jerk (**AccJerk**) and angular jerk (**GyroJerk**) for both **Body** and **Gravity** components. Columns 1 and 2 correspond to the **Subject** and **Activity**. 

A detailed description of the variable names (columns) found in [tidy.txt](https://github.com/goanpeca/coursera-data-science-getting-and-cleaning-data/blob/master/tidy.txt) was generated using the python script [codebook.py](https://github.com/goanpeca/coursera-data-science-getting-and-cleaning-data/blob/master/codebook.py). For more information please refer to [CodeBook.md](https://github.com/goanpeca/coursera-data-science-getting-and-cleaning-data/blob/master/CodeBook.md)

This project includes the following files:
------------------------------------------
- 'README.MD'

- 'CodeBook.txt': List of all features.

- 'run_analysis.R': Main R script performing the tidy operations.

- 'codebook.py': Pythons script to generate CodeBook.md

- 'tidyData.txt': Tidy data processed from 


Notes: 
------
- Each row in [tidy.txt](https://github.com/goanpeca/coursera-data-science-getting-and-cleaning-data/blob/master/tidy.txt) corresponds to an aggregated average per subject and activity of several meassurements.

For more information about this subset contact: [goanpeca](mailto:goanpeca@gmail.com)

License:
--------

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Gonzalo PENA C. July 2014.  

References:
-----------
[1]: [UCI Machine Learning repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[2]: [Human Activity Recognition Using Smartphones Data Set ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

[3]: [Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine](http://link.springer.com/chapter/10.1007/978-3-642-35395-6_30)
