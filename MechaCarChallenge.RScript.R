library(dplyr)

mechacar <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors=F)

reg<- lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechacar)
summary(reg)

suspension_coil <- read.csv(file="Suspension_Coil.csv", check.names=F, stringsAsFactors=F)

total_summary<- suspension_coil %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI), Standard_Deviation_PSI=sd(PSI), Num_Coil=n(), .groups = 'keep')

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI), Standard_Deviation_PSI=sd(PSI), Num_Coil=n(), .groups = 'keep')

t.test(suspension_coil$PSI, mu=1500)

lot1<-subset(suspension_coil, Manufacturing_Lot=="Lot1")
lot2<-subset(suspension_coil, Manufacturing_Lot=="Lot2")
lot3<-subset(suspension_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)


