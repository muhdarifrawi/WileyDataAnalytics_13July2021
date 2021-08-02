salary <- c(2000, 3000, NA, 4000)
salary

# if you have missing values, it will get problematic
# you can't sum it up or do maths with it
sum(salary)

# but you can count
length(salary)

# checking if vector has NA. Returns Boolean.Returns True if NA.
is.na(salary)
# [1] FALSE FALSE  TRUE FALSE

# check which position is True
which(is.na(salary))

# check if vector has NA. Returns Boolean. Returns False if NA.
complete.cases(salary)
# [1]  TRUE  TRUE FALSE  TRUE

# check True positions
which(complete.cases(salary))

# you can make it the other way around
which(!complete.cases(salary))
which(!is.na(salary))

# excluding NA
sum(salary, na.rm = T)
# you can check to see that sum has the na.rm function
?sum

# 2nd method to exclude NA
sum(na.omit(salary))

# 3rd method to exclude NA
sum(na.exclude(salary))

# use subsetting to exclude NA 
salary[!is.na(salary)]
sum(salary[!is.na(salary)])

salary[complete.cases(salary)]
sum(salary[complete.cases(salary)])


