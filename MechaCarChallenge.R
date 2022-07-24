# Deliverable 1

# import library
library(tidyverse)

# read MechaCar_mpg.csv file
Car_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# linear regression
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Car_mpg)

# summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Car_mpg))


# Deliverable 2

# read Suspension_Coil.csv file
Susp_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# creating total_summary using summarize()
total_summary <- Susp_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# creating lot_summary using group_by() and summarize()
lot_summary <- Susp_coil %>% group_by (Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))


# Deliverable 3

# determining difference in PSI for all manufacturing lots using t.test()
t.test(Susp_coil$PSI,mu = 1500)

# determining difference in PSI for each manufacturing lot using t.test() and subset()
L1 <- subset(Susp_coil, Manufacturing_Lot == 'Lot1')
L2 <- subset(Susp_coil, Manufacturing_Lot == 'Lot2')
L3 <- subset(Susp_coil, Manufacturing_Lot == 'Lot3')

t.test(L1$PSI, mu = 1500) 
t.test(L2$PSI, mu = 1500)
t.test(L3$PSI, mu = 1500)

