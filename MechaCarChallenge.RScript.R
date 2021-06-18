# Load in the packages
library(ggplot2)
library(tidyverse)
library(dplyr)

# Import and read MechaCar as a dataframe
MechaCar <- read.csv(file = 'data/MechaCar_mpg.csv')
head(MechaCar)

# Linear regression function & passing in the variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)

# Statistical summary of the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar))