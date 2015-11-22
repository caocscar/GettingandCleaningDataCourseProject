# Codebook

## Mean Summary of a Dataset of Human Activity Recognition Using Smartphones

This dataset is a mean summary of an experimental dataset obtained with a smartphone on human activity 
recognition. More information on the experimenta and initial analysis can be found at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Each row of this mean summary dataset provides

1. The activity
2. The subject
3. The variable name
4. Mean value for all measurements for the aforementioned variable for that subject and activity

The variable names are described with the following nomenclature
- *time-domain* or *frequency-domain* to indicate which domain the variable is in
- *Body* or *Gravity* to indicate which motion component of the accelerometer signal the measurement is coming from
- *accelerometer* or *gyroscope* to indicate which sensor the measurement is coming from
- *Jerk* is the derivative of either the linear acceleration (accelerometer) or the derivative of the angular acceleration (gyroscope)
- *magnitude* is the amplitude of the 3-dimensional signal using the Euclidean norm
- *mean* or *stdev* refers to the statistic calculated 
- *x-axis* or *y-axis* or *z-axis* refers to the axis that the sensor was measuring

e.g. The variable **frequency-domain_Body_gyroscope_Jerk_magnitude_mean** refers to the mean value of the magnitude of the Jerk in the frequency domain from the gyroscope for the body motion component. 

### Units
- Accelerometer units is in **g** which is equivalent to **9.81m/s^2**. 
- Gyroscope units is **revolutions per second** or the angular velocity.
