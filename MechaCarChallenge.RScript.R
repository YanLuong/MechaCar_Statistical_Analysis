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
SuspensionCoil_table <- read.csv(file = 'data/Suspension_Coil.csv')
head(SuspensionCoil_table)

# Summarize - step 3
total_summary <- summarize(SuspensionCoil, Mean = mean(PSI), Median =median(PSI), Variance = var(PSI), SD = sd(PSI),.groups ='keep')

# Summarize and groupby by lot - step 4
lot_summary <-SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median =median(PSI), Variance = var(PSI), SD = sd(PSI),.groups ='keep')


# ---------------- Deliverable 3 ----------------
# t-test

plt <- ggplot(SuspensionCoil_table$PSI) #import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot

# create sample of 150 random data points
sample_table <- SuspensionCoil_table %>% sample_n(150) 
plt <- ggplot(sample_table$PSI) #import dataset into ggplot2
plt + geom_density() #visualize distribution using density plot

# Perform t-test function - Sample vs Population (SuspensionCoil_table)
t.test(x = sample_table$PSI,mu=mean(SuspensionCoil_table$PSI))

t.test(x= sample_table$PSI,mu=1500) #compare sample versus PSI: 1500
t.test(sample_table$PSI,mu=1500)


# t.test vs Each Manufacturing Lot

# Filter by lot into each table
lot_1 <- SuspensionCoil_table %>% filter(Manufacturing_Lot=='Lot1')
lot_2 <- SuspensionCoil_table %>% filter(Manufacturing_Lot=='Lot2')
lot_3 <- SuspensionCoil_table %>% filter(Manufacturing_Lot=='Lot3')


t.test(x= lot_1$PSI,mu=1500)
t.test(x= lot_2$PSI,mu=1500)
t.test(x= lot_3$PSI,mu=1500)



