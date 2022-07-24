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