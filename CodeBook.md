Code Book
=========

For origin source of the data, refer to the `README.md` .
For more information about this dataset contact: activityrecognition@smartlab.ws

Data
---
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.  The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. There are a ttal of 10299 observations.

Each person performed six activities wearing a Samsung Galaxy S II smartphone on the waist. 

Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

Transformation
---

`Train` and `Test` datasets were merged (the test data were appended to the bottom of the training data). The features were used to name the data columns. The subject ID numbers, activity ID number and descriptive activity names were also appended to the dataset.

Derivative variables (i.e. those that can be calculated using other variables) were not included in the final tidy dataset.


Variables
---
There are a total of 21 observations in the final tidy dataset.

`subjectid` One of each 30 volunteers with values ranging from 1 to 30

`activitynum` Code of the activity performed with values ranging from 1 to 6

`activity` Description of the activity performed associated to activitynum

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

`tbodyaccmeanx` Mean of time domain signal from the body accelerometer X axis in standard gravity units 'g' with values ranging from -1 to 1

`tbodyaccmeany`    Mean of time domain signal from the body accelerometer Y axis in standard gravity units 'g'with values ranging from -1 to 1   

`tbodyaccmeanz`    Mean of time domain signal from the body accelerometer Z axis in standard gravity units 'g'with values ranging from -1 to 1

`tbodyaccstdx`     Standard deviation of time domain signal from the body accelerometer X axis in standard gravity units 'g' with values ranging from -1 to 1

`tbodyaccstdy`     Standard deviation of time domain signal from the body accelerometer Y axis in standard gravity units 'g' with values ranging from -1 to 1

`tbodyaccstdz`     Standard deviation of time domain signal from the body accelerometer Z axis in standard gravity units 'g' with values ranging from -1 to 1

`tgravityaccmeanx` Mean of time domain signal from the gravity accelerometer X axis in standard gravity units 'g' with values ranging from -1 to 1

`tgravityaccmeany` Mean of time domain signal from the gravity accelerometer Y axis in standard gravity units 'g' with values ranging from -1 to 1

`tgravityaccmeanz`  Mean of time domain signal from the gravity accelerometer Z axis in standard gravity units 'g' with values ranging from -1 to 1

`tgravityaccstdx` Standard deviation of time domain signal from the gravity accelerometer X axis in standard gravity units 'g' with values ranging from -1 to 1

`tgravityaccstdy` Standard deviation of time domain signal from the gravity accelerometer Y axis in standard gravity units 'g' with values ranging from -1 to 1

`tgravityaccstdz` Standard deviation of time domain signal from the gravity accelerometer Z axis in standard gravity units 'g' with values ranging from -1 to 1

`tbodygyromeanx`  Mean of time domain signal from the gyroscope X axis in standard gravity units 'g' with values ranging from -1 to 1

`tbodygyromeany`  Mean of time domain signal from the gyroscope Y axis in standard gravity units 'g' with values ranging from -1 to 1

`tbodygyromeanz`  Mean of time domain signal from the gyroscope Z axis in standard gravity units 'g' with values ranging from -1 to 1

`tbodygyrostdx`   Standard deviation of time domain signal from the gyroscope X axis in standard gravity units 'g' with values ranging from -1 to 1

`tbodygyrostdy`   Standard deviation of time domain signal from the gyroscope Y axis in standard gravity units 'g' with values ranging from -1 to 1

`tbodygyrostdz`   Standard deviation of time domain signal from the gyroscope Z axis in standard gravity units 'g' with values ranging from -1 to 1

