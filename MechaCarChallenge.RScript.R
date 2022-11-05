library(dplyr)

mechacar <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors=F)

reg<- lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechacar)
summary(reg)

suspension_coil <- read.csv(file="Suspension_Coil.csv", check.names=F, stringsAsFactors=F)

total_summary<- suspension_coil %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI), Standard_Deviation_PSI=sd(PSI), Num_Coil=n(), .groups = 'keep')

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI), Standard_Deviation_PSI=sd(PSI), Num_Coil=n(), .groups = 'keep')
