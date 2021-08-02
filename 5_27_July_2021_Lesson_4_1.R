## () -- used in commands e.g sum(), is.na(), c()
## [] -- used in datarframes/vector objects
## {} -- used in loops, if else, functions

# for loop in range sequence

for(i in 1:6){
  print(i)
}

# for loop in specific sequence
sales = c(129.75, 11.25, 100.50, 120.50)

for (sale in sales){
  print(sale)
}

total.sales = 0.0
for (sale in sales){
  total.sales = total.sales + sale
  print(total.sales)
}
total.sales


# while loop
i <- 1
while(i<=6){
  print(i)
  i = i + 1
}

# you can separate them in a line with semi-colon but not recommended
i <- 1
while(i<=6){print(i); i = i + 1}

# if statement
x <- 5
if(x>0){
  print("positive number")
}

# if-else statment
# the else must be in the same line as the closing bracket of the if
# if it's not, it will show syntax error
x <- -5
if(x>0){
  print("positive number")
}else{
  print("negative number")
}

# alternatively
if(x>0) print("non-negative number") else print("negative number")
if(x>0) "non-negative number" else "negative number"

# ifelse statement
x <- 5
ifelse(x>0, "positive number", "negative number")

# another if-else
num = as.integer(readline(prompt="enter a number: "))

if((num %% 2) == 0){
  print(paste(num," is even"))
}else{
  print(paste(num," is odd"))
}

# if else ladder aka nested if else
# works like Python else if statement
x <- 0 
if(x<0){
  print("negative")
}else if (x>0){
  print("positive")
} else {
  print("zero")
}

# another example
name <- "Iron Man"

if(name == "Aquaman"){
  print("I can swim")
} else if (name == "Batman"){
  print("They call me 'Dark Knight'")
} else if (name == "Superman"){
  print("I am faster than a speeding bullet")
} else {
  print("errr... what's your name?")
}

# another example
x <- 0 
ifelse(x>0, "positive number", ifelse(x<0, "negative number", "zero"))


# functions
score <- c(-2.1, 3.5, 5.1, 7, 6.2, 9.1, 0)

multiply_10 <- function(x){
  x*10
}

multiply_10(score)

# combined example

marks <- c(49, 50, 70)
marks_new <- NULL

if(marks[1]<50 ){
  marks_new[1] <- marks[1] + 1
} else {
  marks_new[1] <- marks[1]
}

if(marks[2]<50 ){
  marks_new[2] <- marks[2] + 1
} else {
  marks_new[2] <- marks[2]
}

if(marks[3]<50 ){
  marks_new[3] <- marks[3] + 1
} else {
  marks_new[3] <- marks[3]
}

marks_new

mean(marks_new)


# using loops and if else statements
marks <- c(49, 50, 70)
marks_new2 <- vector() # another way to intialise an empty vector
length(marks)

for(i in 1:length(marks)){
  if(marks[i]<50){
    marks_new2[i] <- marks[i]+1
  } else {
    marks_new2[i] <- marks[i]
  }
}

marks_new2
mean(marks_new2)

# another example
marks <- c(49, 50, 70)

compassionate_function <- function(x) {
  marks_new3 <- NULL
  
  for(i in 1:length(x)){
    if(x[i]<50){
      marks_new3[i] <- x[i] + 1
    } else {
      marks_new3[i] <- x[i]
    }
  }
  return(marks_new3)
}

compassionate_function(marks)
mean(compassionate_function(marks))

# we can re-use the function to adjust the marks
marks2 <- c(48, 49, 50, 51)
new_marks2<- NULL
#... continue on 