# MechaCar Statistical Analysis



## Linear Regression to Predict MPG - Del 1

#### Results - Output of Multiple Linear Regression:

![linear regression](https://github.com/YanLuong/MechaCar_Statistical_Analysis/blob/main/screenshots/summary_linear_regression.png)

#

#### Analysis: 

***Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?***

At α=0.05, we can see that the variables 'vehicle length' and 'ground clearance' are statistically significant because their corresponding p-values is less than 0.05 (or indicated with '***' in output). This means that both variables are individually useful in predicting the MPG.

***Is the slope of the linear model considered to be zero? Why or why not?***

The slope of the linear model is not considered to be zero. The reason for this is because the model shows that there is a significant relationship between MPG and the variables. If the slope of the linear model was zero then the r-value would be 0 to show no significance.

***Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?***

This linear model does predict the mpg of MechaCar prototypes. It helps to identify which variables contribute to the prediction of MPG. The linear model has a multiple R-squared value of 0.71 or adjusted R-squared of 0.68. Both R-sqaured values are very close matched so if we only consider the adjusted R-squared value, we can still say that there is a strong relationship with the dependent variable (MPG) and the independent variables. The adjusted R-squared value show that 68% of the total variation in MPG can be explained by the regression.

----

## Summary Statistics on Suspension Coils

***The summary statistics on suspension coils attempts to address the following question:***

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not? 

##### Results - Output of Total Summary and Lot Summary: 




![total summar](https://github.com/YanLuong/MechaCar_Statistical_Analysis/blob/main/screenshots/total_summary_del2.png)


#

![summary lot](https://github.com/YanLuong/MechaCar_Statistical_Analysis/blob/main/screenshots/lot_summary_del2.png)

#

#### Summary:

In the total summary, the results show a standard deviation of 7.9% and variance of 62.3%. In my opinion, while both stats are considered on the higher side it is still within the design specification criteria where variance of suspension coils must not exceed 100. However, when referring to the lot summary with a breakdown of the summary statistics by manufacturing lots, we can observe where the high standard deviation and variance is coming from. Manufacturing Lot 3 has a significantly higher standard and variance in comparison to Lot 1 and Lot 2. While Lot 1 and 2 both have a mean and median of 1500 and variance < 7.5, Lot 3's variance is at 170% and SD at 13. That means that manufacturing Lot 3 does not meet the design specification criteria. Lot 3's data points are very spread out from the mean hence the high variance. We can also visualise the summary by Lots in the screenshot below. The boxplot indicate that there are a large number of outliers which have contributed to the high variance and pulled the mean down.

![boxplot](https://github.com/YanLuong/MechaCar_Statistical_Analysis/blob/main/screenshots/boxplot.png)













----
## T-Tests on Suspension Coils

briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.
