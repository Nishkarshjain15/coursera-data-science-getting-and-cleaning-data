Codebook
===============================================
Samsung Galaxy S Tidy Data Subset
-----------------------------------

Description:
------------
The file [tidyData.txt](https://github.com/goanpeca/coursera-data-science-getting-and-cleaning-data/blob/master/tidy.txt) is a processed subset of the original [Human Activity Recognition Using Smartphones Data Set ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) produced by [UCI Machine Learning repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). It followed a series of steps including:

- Merging the training and the test subjects into a single dataset.
- Extracting only the measurements corresponding to the mean (Mean) and standard deviation (std) for each available measurement. 
- Joining the subjects with the activities performed by the subjects with the measurements from the dataset.
- Evaluating the mean per subject and activity of the available meassurements and sorting by subject and activity.

The resulting tidy dataset contains 66 columns of averaged information (per subject and activity) corresponding to the mean and std of different meassurements for a total of 180 observations (rows). Columns 1 and 2 correspond to the subject and activity. 

For more information please read [README](https://github.com/goanpeca/coursera-data-science-getting-and-cleaning-data/blob/master/README.md). 

The following lines describe each variable, column number, type of data and range of data for the tidy dataset file.


**1. Subject**
  + Subjects that perform a set of activities


      [1,30] . Integer values representing a person.



**2. Activity**
  + Activities performed by the test and train subjects


      [LAYING, SITTING, STANDING, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS]. String values representing activities.



**3. Time.BodyAcc.Mean.X**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *X* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**4. Time.BodyAcc.Mean.Y**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *Y* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**5. Time.BodyAcc.Mean.Z**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *Z* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**6. Time.BodyAcc.std.X**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *X* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**7. Time.BodyAcc.std.Y**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *Y* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**8. Time.BodyAcc.std.Z**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *Z* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**9. Time.GravityAcc.Mean.X**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *X* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**10. Time.GravityAcc.Mean.Y**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *Y* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**11. Time.GravityAcc.Mean.Z**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *Z* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**12. Time.GravityAcc.std.X**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *X* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**13. Time.GravityAcc.std.Y**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *Y* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**14. Time.GravityAcc.std.Z**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *Z* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**15. Time.BodyAccJerk.Mean.X**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *X* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**16. Time.BodyAccJerk.Mean.Y**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *Y* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**17. Time.BodyAccJerk.Mean.Z**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *Z* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**18. Time.BodyAccJerk.std.X**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *X* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**19. Time.BodyAccJerk.std.Y**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *Y* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**20. Time.BodyAccJerk.std.Z**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *Z* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**21. Time.BodyGyro.Mean.X**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *X* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**22. Time.BodyGyro.Mean.Y**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *Y* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**23. Time.BodyGyro.Mean.Z**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *Z* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**24. Time.BodyGyro.std.X**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *X* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**25. Time.BodyGyro.std.Y**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *Y* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**26. Time.BodyGyro.std.Z**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *Z* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**27. Time.BodyGyroJerk.Mean.X**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *X* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**28. Time.BodyGyroJerk.Mean.Y**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *Y* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**29. Time.BodyGyroJerk.Mean.Z**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *Z* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**30. Time.BodyGyroJerk.std.X**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *X* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**31. Time.BodyGyroJerk.std.Y**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *Y* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**32. Time.BodyGyroJerk.std.Z**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *Z* direction in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**33. Time.BodyAccMag.Mean**
  + Average value for the measurements of the *Magnitude* of the *Mean* of the *Body Linear Jerk* in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**34. Time.BodyAccMag.std**
  + Average value for the measurements of the *Magnitude* of the *Standard Deviation* of the *Body Linear Jerk* in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**35. Time.GravityAccMag.Mean**
  + Average value for the measurements of the *Magnitude* of the *Mean* of the *Body Linear Jerk* in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**36. Time.GravityAccMag.std**
  + Average value for the measurements of the *Magnitude* of the *Standard Deviation* of the *Body Linear Jerk* in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**37. Time.BodyAccJerkMag.Mean**
  + Average value for the measurements of the *Magnitude* of the *Mean* of the *Body Linear Jerk* in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**38. Time.BodyAccJerkMag.std**
  + Average value for the measurements of the *Magnitude* of the *Standard Deviation* of the *Body Linear Jerk* in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**39. Time.BodyGyroMag.Mean**
  + Average value for the measurements of the *Magnitude* of the *Mean* of the *Body Linear Jerk* in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**40. Time.BodyGyroMag.std**
  + Average value for the measurements of the *Magnitude* of the *Standard Deviation* of the *Body Linear Jerk* in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**41. Time.BodyGyroJerkMag.Mean**
  + Average value for the measurements of the *Magnitude* of the *Mean* of the *Body Linear Jerk* in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**42. Time.BodyGyroJerkMag.std**
  + Average value for the measurements of the *Magnitude* of the *Standard Deviation* of the *Body Linear Jerk* in the *Time* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**43. Frequency.BodyAcc.Mean.X**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *X* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**44. Frequency.BodyAcc.Mean.Y**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *Y* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**45. Frequency.BodyAcc.Mean.Z**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *Z* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**46. Frequency.BodyAcc.std.X**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *X* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**47. Frequency.BodyAcc.std.Y**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *Y* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**48. Frequency.BodyAcc.std.Z**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *Z* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**49. Frequency.BodyAccJerk.Mean.X**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *X* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**50. Frequency.BodyAccJerk.Mean.Y**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *Y* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**51. Frequency.BodyAccJerk.Mean.Z**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *Z* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**52. Frequency.BodyAccJerk.std.X**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *X* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**53. Frequency.BodyAccJerk.std.Y**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *Y* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**54. Frequency.BodyAccJerk.std.Z**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *Z* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**55. Frequency.BodyGyro.Mean.X**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *X* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**56. Frequency.BodyGyro.Mean.Y**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *Y* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**57. Frequency.BodyGyro.Mean.Z**
  + Average value for the measurements of the *Mean* of the *Body Linear Jerk* in the *Z* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**58. Frequency.BodyGyro.std.X**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *X* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**59. Frequency.BodyGyro.std.Y**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *Y* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**60. Frequency.BodyGyro.std.Z**
  + Average value for the measurements of the *Standard Deviation* of the *Body Linear Jerk* in the *Z* direction in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**61. Frequency.BodyAccMag.Mean**
  + Average value for the measurements of the *Magnitude* of the *Mean* of the *Body Linear Jerk* in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**62. Frequency.BodyAccMag.std**
  + Average value for the measurements of the *Magnitude* of the *Standard Deviation* of the *Body Linear Jerk* in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**63. Frequency.BodyAccJerkMag.Mean**
  + Average value for the measurements of the *Magnitude* of the *Mean* of the *Body Linear Jerk* in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**64. Frequency.BodyAccJerkMag.std**
  + Average value for the measurements of the *Magnitude* of the *Standard Deviation* of the *Body Linear Jerk* in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**65. Frequency.BodyGyroMag.Mean**
  + Average value for the measurements of the *Magnitude* of the *Mean* of the *Body Linear Jerk* in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**66. Frequency.BodyGyroMag.std**
  + Average value for the measurements of the *Magnitude* of the *Standard Deviation* of the *Body Linear Jerk* in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**67. Frequency.BodyGyroJerkMag.Mean**
  + Average value for the measurements of the *Magnitude* of the *Mean* of the *Body Linear Jerk* in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.



**68. Frequency.BodyGyroJerkMag.std**
  + Average value for the measurements of the *Magnitude* of the *Standard Deviation* of the *Body Linear Jerk* in the *Frequency* domain for a given *Subject* doing a specific *Activity*


      [-1.0,1.0] . Normalized floating point values.
