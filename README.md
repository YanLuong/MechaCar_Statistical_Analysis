# MechaCar Statistical Analysis



## Linear Regression to Predict MPG - Del 1

##### Results - Output of Multiple Linear Regression:

![linear regression](https://github.com/YanLuong/MechaCar_Statistical_Analysis/blob/main/screenshots/summary_linear_regression.png)

#
***Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?***

At α=0.05, we can see that the variables 'vehicle length' and 'ground clearance' are statistically significant because their corresponding p-values is less than 0.05 (or indicated with '***' in output). This means that both variables are individually useful in predicting the MPG.

***Is the slope of the linear model considered to be zero? Why or why not?***

The slope of the linear model is not considered to be zero. The reason for this is because the model shows that there is a significant relationship between MPG and the variables. If the slope of the linear model was zero then the r-value would be 0 to show no significance.

***Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?***

This linear model does predict the mpg of MechaCar prototypes. The linear model has a multiple R-squared value of 0.71 or adjusted R-squared of 0.68. As both R-sqaured values are very close, we can use either one. The R-squared value show that 71% of the total variation in MPG can be explained by the regression.

----

## Summary Statistics on Suspension Coils, 

Write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?


----
## T-Tests on Suspension Coils

briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.
