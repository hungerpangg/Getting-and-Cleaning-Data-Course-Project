# Codebook for Getting and Cleaning Data Course Project



## Variables

Each row contains, for a given activity and subject, 88 variable measurements including the "Activity" and "Subject" variables.

### Categories

**Activity**

Category with 6 different character string values: 

1. WALKING
2. WALKING_UPSTAIRS 
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

**Subject**

Category with 30 different integer values ranging from 1 to 30

### Measurements of Categorical Averages

All variables and their corresponding rows are numerical values.

The measurements include only the mean and standard deviation measurements, and are classified mainly into two categories: Time and Frequency. 

Mean and standard deviation variables in the time category: 

1. "TimeBodyAccelerometer-Mean-X"                        
2. "TimeBodyAccelerometer-Mean-Y"                        
3. "TimeBodyAccelerometer-Mean-Z"                        
4. "TimeGravityAccelerometer-Mean-X"                     
5. "TimeGravityAccelerometer-Mean-Y"                     
6. "TimeGravityAccelerometer-Mean-Z"                     
7. "TimeBodyAccelerometerJerk-Mean-X"                    
8. "TimeBodyAccelerometerJerk-Mean-Y"                    
9. "TimeBodyAccelerometerJerk-Mean-Z"                    
10. "TimeBodyGyroscope-Mean-X"                            
11. "TimeBodyGyroscope-Mean-Y"                            
12. "TimeBodyGyroscope-Mean-Z"                            
13. "TimeBodyGyroscopeJerk-Mean-X"                        
14. "TimeBodyGyroscopeJerk-Mean-Y"                        
15. "TimeBodyGyroscopeJerk-Mean-Z"                        
16. "TimeBodyAccelerometerMagnitude-Mean"                 
17. "TimeGravityAccelerometerMagnitude-Mean"              
18. "TimeBodyAccelerometerJerkMagnitude-Mean"             
19. "TimeBodyGyroscopeMagnitude-Mean"                     
20. "TimeBodyGyroscopeJerkMagnitude-Mean"                 
21. "Angle-TimeBodyAccelerometerMean,Gravity"             
22. "Angle-TimeBodyAccelerometerJerkMean,GravityMean"     
23. "Angle-TimeBodyGyroscopeMean,GravityMean"             
24. "Angle-TimeBodyGyroscopeJerkMean,GravityMean"         
25. "TimeBodyAccelerometer-StandardDeviation-X"           
26. "TimeBodyAccelerometer-StandardDeviation-Y"           
27. "TimeBodyAccelerometer-StandardDeviation-Z"           
28. "TimeGravityAccelerometer-StandardDeviation-X"        
29. "TimeGravityAccelerometer-StandardDeviation-Y"        
30. "TimeGravityAccelerometer-StandardDeviation-Z"        
31. "TimeBodyAccelerometerJerk-StandardDeviation-X"       
32. "TimeBodyAccelerometerJerk-StandardDeviation-Y"       
33. "TimeBodyAccelerometerJerk-StandardDeviation-Z"       
34. "TimeBodyGyroscope-StandardDeviation-X"               
35. "TimeBodyGyroscope-StandardDeviation-Y"               
36. "TimeBodyGyroscope-StandardDeviation-Z"               
37. "TimeBodyGyroscopeJerk-StandardDeviation-X"           
38. "TimeBodyGyroscopeJerk-StandardDeviation-Y"           
39. "TimeBodyGyroscopeJerk-StandardDeviation-Z"           
40. "TimeBodyAccelerometerMagnitude-StandardDeviation"    
41. "TimeGravityAccelerometerMagnitude-StandardDeviation" 
42. "TimeBodyAccelerometerJerkMagnitude-StandardDeviation"
43. "TimeBodyGyroscopeMagnitude-StandardDeviation"        
44. "TimeBodyGyroscopeJerkMagnitude-StandardDeviation"  

Mean and standard deviation variables in the frequency category:

1. "FrequencyBodyAccelerometer-Mean-X"                        
2. "FrequencyBodyAccelerometer-Mean-Y"                        
3. "FrequencyBodyAccelerometer-Mean-Z"                        
4. "FrequencyBodyAccelerometer-MeanFrequency-X"               
5. "FrequencyBodyAccelerometer-MeanFrequency-Y"               
6. "FrequencyBodyAccelerometer-MeanFrequency-Z"               
7. "FrequencyBodyAccelerometerJerk-Mean-X"                    
8. "FrequencyBodyAccelerometerJerk-Mean-Y"                    
9. "FrequencyBodyAccelerometerJerk-Mean-Z"                    
10. "FrequencyBodyAccelerometerJerk-MeanFrequency-X"           
11. "FrequencyBodyAccelerometerJerk-MeanFrequency-Y"           
12. "FrequencyBodyAccelerometerJerk-MeanFrequency-Z"           
13. "FrequencyBodyGyroscope-Mean-X"                            
14. "FrequencyBodyGyroscope-Mean-Y"                            
15. "FrequencyBodyGyroscope-Mean-Z"                            
16. "FrequencyBodyGyroscope-MeanFrequency-X"                   
17. "FrequencyBodyGyroscope-MeanFrequency-Y"                   
18. "FrequencyBodyGyroscope-MeanFrequency-Z"                   
19. "FrequencyBodyAccelerometerMagnitude-Mean"                 
20. "FrequencyBodyAccelerometerMagnitude-MeanFrequency"        
21. "FrequencyBodyAccelerometerJerkMagnitude-Mean"             
22. "FrequencyBodyAccelerometerJerkMagnitude-MeanFrequency"    
23. "FrequencyBodyGyroscopeMagnitude-Mean"                     
24. "FrequencyBodyGyroscopeMagnitude-MeanFrequency"            
25. "FrequencyBodyGyroscopeJerkMagnitude-Mean"                 
26. "FrequencyBodyGyroscopeJerkMagnitude-MeanFrequency"        
27. "FrequencyBodyAccelerometer-StandardDeviation-X"           
28. "FrequencyBodyAccelerometer-StandardDeviation-Y"           
29. "FrequencyBodyAccelerometer-StandardDeviation-Z"           
30. "FrequencyBodyAccelerometerJerk-StandardDeviation-X"       
31. "FrequencyBodyAccelerometerJerk-StandardDeviation-Y"       
32. "FrequencyBodyAccelerometerJerk-StandardDeviation-Z"       
33. "FrequencyBodyGyroscope-StandardDeviation-X"               
34. "FrequencyBodyGyroscope-StandardDeviation-Y"               
35. "FrequencyBodyGyroscope-StandardDeviation-Z"               
36. "FrequencyBodyAccelerometerMagnitude-StandardDeviation"    
37. "FrequencyBodyAccelerometerJerkMagnitude-StandardDeviation"
38. "FrequencyBodyGyroscopeMagnitude-StandardDeviation"        
39. "FrequencyBodyGyroscopeJerkMagnitude-StandardDeviation"  

Mean variables that are not in either categories:

1. "AngleX,GravityMean"                             
2. "AngleY,GravityMean"                             
3. "AngleZ,GravityMean"  

## Data

This data represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here is the data used for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Transformations

R script called run_analysis.R will perform the 5 following steps accordingly:

1. Merging training and test sets to create one data set
    1.1 Reading files 
        1.1.1 Reading test tables
        1.1.2 Reading training tables
        1.1.3 Reading feature vector and activity labels
    1.2 Merging all respective test and training tables 
        1.2.1 Merging test tables
        1.2.2 Merging training tables
    1.3 Merging all tables into one dataset
    1.4 Assigning relevant column names

2. Extracting the mean and standard deviation for each measurement

3. Using descriptive activity names to name the activities in the data set

4. Labeling the data set with descriptive variable names

5. Creating an independent tidy data set with the average of each variable for each activity and subject
    5.1 Creating a second tidy data set
    5.2 Writing second tidy data set into a text file

The code assumes that the file path to the revelant data tables are personalised and unique to the original project owner's local computer. 
