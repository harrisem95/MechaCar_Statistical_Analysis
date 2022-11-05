# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

### Results
The vehicle_length and ground_clearance provide a non-random amount of variance to the mpg values in the dataset because their p-values are less than 0.05. The p-value of this model is 5.35e-11 which is less than 0.05 which indicates that the slope of the linear model is not zero. Multiple R-squared is 0.7149 which indicates that 71.49% of predictions using this model will be correct, which means that this linear model does effectively predict mpg of MechaCar prototypes effectively.

![MechaCar Summary](/Resources/lm_summary_mechacar.png) 


## Summary Statistics on Suspension Coils

### Results
When looking at the total_summary table, the variance is 62.29356 which is well below the 100 benchmark. However, looking more deeply at the data grouping the data by lot number, we can see that lot 3 has a variance of 170.2861224 which is significantly higher than the 100 pound variance benchmark and this lot i s causing the largest amount of variance within the data.

![Total Summary](/Resources/total_summary_suspension_coil.png)  <br />

![Lot Summary](/Resources/lot_summary_suspension_coil.png) 


 ## T-Tests on Suspension Coils

### Results

![Total T Test](/Resources/total_t_test.png)  <br />
The p-value is greater than 0.5, meaning that the PSI across all manufacturing lots is not statistically different from the population mean of 1,500 pounds per square inch.


![Lot 1 T Test](/Resources/lot_1_t_test.png)  <br />
The p-value is greater than 0.5, meaning that the PSI of lot 1 is not statistically different from the population mean of 1,500 pounds per square inch.


![Lot 2 T Test](/Resources/lot_2_t_test.png)  <br />
The p-value is greater than 0.5, meaning that the PSI of lot 2 is not statistically different from the population mean of 1,500 pounds per square inch.

![Lot 3 T Test](/Resources/lot_3_t_test.png)  <br />
The p-value is less than 0.5, meaning that the PSI of lot 3 is  statistically different from the population mean of 1,500 pounds per square inch.


## Study Design: MechaCar vs Competition

I will be creating a statistical study that can quantify how MechaCars performs against competition. I will test mechacars against competition in safety rating, fuel efficiency, reselling price, horsepower, maintenance costs, and current selling price. My null hypothesis is that mechacar is priced correctly based on it's performance compared to competition. My alternate hypothesis is that mechacar is priced incorrectly based on it's performance compared to competition. I would use multiple linear regression to see which factors contribute the highest correlation with the selling price. I would need the data from mechacars performance as well as the data from competitors to perform this analysis.
