# Getting and Cleaning Data Course Project CodeBook

## Description

This codebook describes the tidy data set provided by the run_analysis.R file on the UCI Human Activity Using Smartphone Data Set. The tidy data set is output as tidy_data.txt with no column labels. 

The description of the UCI Human Activity Using Smartphone Data Set is copied directly from the UCI HAR README.txt file.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## Column Descriptions (tidy_data.txt)

## Subject                                                             
  An anonymous ID of the individual test subject (volunteer) performing the activity. Its range is from 1 to 30. 
## Activity       
  A text description of one of six activities being performed by the Subject. (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
  
The following column labels are described by their titles. In all cases, the row values of the tidy data set are the average of all the data for the given value grouped by Subject and Activity.

## Example:

        1            WALKING                                 0.2773308
        1   WALKING_UPSTAIRS                                 0.2554617
        1 WALKING_DOWNSTAIRS                                 0.2891883

The first column represents the Subject identified as 1. The second column represents the WALKING activity and the third column represents the Average Time Domain Body Acceleration Mean in the X direction recorded for Subject 1 performing the activity of WALKING. Each measurement is also accompanied by a corresponding measurement in the Y and Z direction and the same description applies in each direction.

For each record it is provided:
--------------------------------

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. (Reduced down to just the mean and standar deviation of the measurements for the tidy set.)
- Its activity label. 
- An identifier of the subject who carried out the experiment.


## Measurements:

AverageTimeDomainBodyAccelerationMean-X                             
AverageTimeDomainBodyAccelerationMean-Y                             
AverageTimeDomainBodyAccelerationMean-Z                             
AverageTimeDomainBodyAccelerationStandardDeviation-X                
AverageTimeDomainBodyAccelerationStandardDeviation-Y               
AverageTimeDomainBodyAccelerationStandardDeviation-Z                
AverageTimeDomainGravityAccelerationMean-X                          
AverageTimeDomainGravityAccelerationMean-Y                          
AverageTimeDomainGravityAccelerationMean-Z                          
AverageTimeDomainGravityAccelerationStandardDeviation-X             
AverageTimeDomainGravityAccelerationStandardDeviation-Y             
AverageTimeDomainGravityAccelerationStandardDeviation-Z             
AverageTimeDomainBodyAccelerationJerkMean-X                         
AverageTimeDomainBodyAccelerationJerkMean-Y                         
AverageTimeDomainBodyAccelerationJerkMean-Z                         
AverageTimeDomainBodyAccelerationJerkStandardDeviation-X            
AverageTimeDomainBodyAccelerationJerkStandardDeviation-Y            
AverageTimeDomainBodyAccelerationJerkStandardDeviation-Z            
AverageTimeDomainBodyGyroscopeMean-X                                
AverageTimeDomainBodyGyroscopeMean-Y                                
AverageTimeDomainBodyGyroscopeMean-Z                                
AverageTimeDomainBodyGyroscopeStandardDeviation-X                   
AverageTimeDomainBodyGyroscopeStandardDeviation-Y                   
AverageTimeDomainBodyGyroscopeStandardDeviation-Z                   
AverageTimeDomainBodyGyroscopeJerkMean-X                            
AverageTimeDomainBodyGyroscopeJerkMean-Y                            
AverageTimeDomainBodyGyroscopeJerkMean-Z                            
AverageTimeDomainBodyGyroscopeJerkStandardDeviation-X               
AverageTimeDomainBodyGyroscopeJerkStandardDeviation-Y               
AverageTimeDomainBodyGyroscopeJerkStandardDeviation-Z               
AverageTimeDomainBodyAccelerationMagnitudeMean                      
AverageTimeDomainBodyAccelerationMagnitudeStandardDeviation         
AverageTimeDomainGravityAccelerationMagnitudeMean                   
AverageTimeDomainGravityAccelerationMagnitudeStandardDeviation      
AverageTimeDomainBodyAccelerationJerkMagnitudeMean                  
AverageTimeDomainBodyAccelerationJerkMagnitudeStandardDeviation     
AverageTimeDomainBodyGyroscopeMagnitudeMean                         
AverageTimeDomainBodyGyroscopeMagnitudeStandardDeviation            
AverageTimeDomainBodyGyroscopeJerkMagnitudeMean                     
AverageTimeDomainBodyGyroscopeJerkMagnitudeStandardDeviation        
AverageFrequencyDomainBodyAccelerationMean-X                        
AverageFrequencyDomainBodyAccelerationMean-Y                        
AverageFrequencyDomainBodyAccelerationMean-Z                        
AverageFrequencyDomainBodyAccelerationStandardDeviation-X           
AverageFrequencyDomainBodyAccelerationStandardDeviation-Y           
AverageFrequencyDomainBodyAccelerationStandardDeviation-Z           
AverageFrequencyDomainBodyAccelerationJerkMean-X                    
AverageFrequencyDomainBodyAccelerationJerkMean-Y                    
AverageFrequencyDomainBodyAccelerationJerkMean-Z                    
AverageFrequencyDomainBodyAccelerationJerkStandardDeviation-X       
AverageFrequencyDomainBodyAccelerationJerkStandardDeviation-Y       
AverageFrequencyDomainBodyAccelerationJerkStandardDeviation-Z       
AverageFrequencyDomainBodyGyroscopeMean-X                           
AverageFrequencyDomainBodyGyroscopeMean-Y                           
AverageFrequencyDomainBodyGyroscopeMean-Z                           
AverageFrequencyDomainBodyGyroscopeStandardDeviation-X              
AverageFrequencyDomainBodyGyroscopeStandardDeviation-Y              
AverageFrequencyDomainBodyGyroscopeStandardDeviation-Z              
AverageFrequencyDomainBodyAccelerationMagnitudeMean                 
AverageFrequencyDomainBodyAccelerationMagnitudeStandardDeviation    
AverageFrequencyDomainBodyAccelerationJerkMagnitudeMean 
AverageFrequencyDomainBodyAccelerationJerkMagnitudeStandardDeviation
AverageFrequencyDomainBodyGyroscopeMagnitudeMean        
AverageFrequencyDomainBodyGyroscopeMagnitudeStandardDeviation
AverageFrequencyDomainBodyGyroscopeJerkMagnitudeMean    
AverageFrequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
