-------------------
  NAME: DANSO ABEL DWAMENA
  ACTIVITY 1
-------------------
PHC = X10_2021PHC_CSV
summary_dimensions <- dim(PHC)  #checking for number of observations and variables
summary_dimensions
Missing_data <- colnames(PHC)[colSums(is.na(PHC))>0]    #variables with missing data  
variable_types <- sapply(PHC, class)        #type of variable
variable_types
male_female_by_region <- table(PHC$region, PHC$a12d)   #number of male and female by region
male_female_by_region
male_female_by_employment <- table(PHC$sector, PHC$a12d)    #number of male and female by sector of employment
male_female_by_employment
Girls_below_twelve_married <- sum(PHC$a12e < 12 & PHC$a12d == "Female" & PHC&marital_status == "Married" na.rm = TRUE)   #Girls below 12 who are married
Girls_below_twelve_married