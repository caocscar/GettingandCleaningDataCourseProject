# Codebook

## Human Activity Recognition Using Smartphones Summary Dataset

This dataset is a mean summary of a dataset obtained from an experiment conducted with a smartphone on human activity 
recognition. More information can be found at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Each row of the dataset provides

1. The activity
2. The subject
3. The variable description
4. Mean value for the aforementioned variable

The variable names are described with the following nomenclature
- *time-domain* or *frequency-domain* to indicate which domain the variable was calculated in
- *Body* or *Gravity* to indicate which motion component the accelerometer sensor signal the measurement is coming from
- *accelerometer* or *gyroscope* to indicate which sensor the measurement is coming from
- *Jerk* is the derivative of acceleration
- *magnitude* is the amplitude of the signal
- *mean* or *stdev* refers to whether the variable value is the mean or the standard deviation of the measurement for the 
subject for that activity
- *x-axis* or *y-axis* or *z-axis* refers to the axis that the sensor was measuring along

e.g. The variable **frequency-domain_Body_gyroscope_Jerk_magnitude_mean** refers to the mean value of the magnitude of the Jerk
in the frequency domain from the gyroscope for the body motion component. 

### Units
- Accelerometer units is in standard gravity units **g**. 
- Gyroscope units is in angular velocity **revolutions per second**
