getwd()
setwd("d:\\R projects\\datasets\\")
data <- read.csv("company2.csv", header = T, na.strings = c('','.','NA',' '), 
                 stringsAsFactors = F)
data <- data.frame(data)

data

managers <- data[data$job == "manager", "salary"]

mean(managers)

employees <- data[data$job == "employee", "salary"]

mean(employees)

indexed_data <- transform (data, salary_index = ifelse(job == "manager", 
                                                       round(salary/mean(managers), 
                                                             digits=3), 
                                                ifelse( job == "employee", 
                                                      round(salary/mean(employees), 
                                                            digits=3), 
                                               "Not Applicable")))

View(indexed_data)
