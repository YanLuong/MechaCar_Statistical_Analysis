# Load in the packages
library(ggplot2)
library(tidyverse)
library(dplyr)


# ---------------- Deliverable 1 ----------------

# Import and read MechaCar as a dataframe
MechaCar <- read.csv(file = 'data/MechaCar_mpg.csv')
head(MechaCar)

# Linear regression function & passing in the variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)

# Statistical summary of the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar))


# ---------------- Deliverable 2 ----------------

# Import and read Suspension_Coil data as a dataframe
SuspensionCoil <- read.csv(file = 'data/Suspension_Coil.csv')
head(SuspensionCoil)


# Summarize - step 3
total_summary <- summarize(SuspensionCoil, Mean = mean(PSI), Median =median(PSI), Variance = var(PSI), SD = sd(PSI),.groups ='keep')

# Summarize and groupby by lot - step 4
lot_summary <-SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median =median(PSI), Variance = var(PSI), SD = sd(PSI),.groups ='keep')
