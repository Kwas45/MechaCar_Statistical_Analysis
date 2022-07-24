# MechaCar Statistical Analysis Overview

The purpose of this project is to review the production data for insights that may help the manufacturing team of AutosRUs’. The company has a new prototype, the MechaCar, which is suffering from production troubles that are blocking the manufacturing team’s progress. The tasks that will be completed are as follows:

> _Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes._

> _Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots._

> _Run t-tests to determine if the manufacturing lots are statistically different from the mean population._

> _Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings._


## Linear Regression to Predict MPG

![image](https://user-images.githubusercontent.com/102786356/180637805-1c7b3df7-56fe-4948-8ef3-5cf148dc2ec1.png)

#### Written Summary

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

According to the data, vehicle_length and ground_clearance provide a non-random amount of variance to the mpg values 
the variance of non-random variable is 0

* Is the slope of the linear model considered to be zero? Why or why not?

With a p-value of 5.35e-11 it is safe to reject the null hypothesis as it is smaller than the significance level of  
0.05. This goes to show the linear model's slope is not considered to be zero. 

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

This linear model does indeed predict mpg of MechaCar prototypes effectively. With the r-value at 0.7149, we can deduce
that approximately 71% of all mpg predictions will be effectively determined by this model. 

## Summary Statistics on Suspension Coils

### Total_Summary
![image](https://user-images.githubusercontent.com/102786356/180638094-33c04ef5-5622-41f9-8890-8084d318ddf7.png)


### Lot_Summary
![image](https://user-images.githubusercontent.com/102786356/180638171-88aa52c5-d72c-4a59-9fa0-1db7e554486d.png)

#### Written Summary

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Based on our data, the variance of the suspension coils of the total lot is 62.29 PSI. This does not exceed the 100 pouds per square inch design specification. 
With this in mind, Lot 1 and Lot 2, which have variances of 0.98 and 7.47 resepectively also do not exceed the 100 pounds per square inch design specification. 
Lot 3 on the other hand has a significantly high vairance of 170.29, which exceeds the threshold of the design specification. 



## T-Tests on Suspension Coils
#### T-Test on all lots

![image](https://user-images.githubusercontent.com/102786356/180638935-83e77f8b-49cd-47be-ae3d-45a207f65931.png)

#### Written Summary
The p-value is 0.06 and the significance level has a value of 0.05. Knowing this, we to fail to reject the null hypothesis. The true mean of our dataset is 1497.78, 
which is not so far off from the population mean of 1500. 


#### T-Test on each lot

![image](https://user-images.githubusercontent.com/102786356/180639027-3bb1dd07-db23-4f20-8d7c-95c62d316438.png)

#### Written Summary
With significance level at 0.05, we fail to reject the null hypothesis of both Lot 1 and Lot 2. This is because, Lot 1 has a p-value of 1 and Lot 2 has a p-value of 0.61. With means of 1500 and 1500.2 respectively, they are both statistically similar to the population mean of 1500. 
Lot 3, which has a p-value of 0.04 much lower than the significance level of 0.05 we reject the null hypothesis. The sample mean 1496.14, is also significantly smaller in comparison to Lots 1 and 2. 



