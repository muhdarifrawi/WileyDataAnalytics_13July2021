# importing datasets into R

# finding current working directory
getwd()
# set working directory
setwd("d:\\R projects\\datasets\\")

data1 <- read.csv("load_test1.csv", header=T, na.strings=c('','.', 'NA',' '), stringsAsFactors=F)
data1
str(data1)

data2 <- read.csv("load_test2.csv", header = T, na.strings = c('','.','NA',' '), stringsAsFactors = F)
data2    

data3 <- rbind(data1, data2)
data3

# avoid doing this as there would be two columns with Name
data4 <- cbind(data1, data2)
data4

# export processed files as CSV
# left side is which data to export, right side is the name to give and extension.
write.csv(data3, "processed_data_test3.csv")
# file will be found in the current working directory
# row names (the numbers on the extreme left) are always given but can be removed
write.csv(data3, "processed_data_test3.csv", row.names=FALSE)
