# hash for comments

print("hello world")

3+9-2

(2+3)*3-(5/2)

# highlight multiple line then
# shit + ctrl + c -> multi-line comment

# Four basic data type

#(a) Vectors
# all elements have same class type
# concatenate. Use small c, don't space between c and bracket
# <- = assignment operator
#IMPORTANT: You need to run the code line by line each time you create a script.
#IMPORTANT: Vector NEEDS to contain same data types.

# character class
name_1 <- c("albert","betty","Candy")
name_1 #prints result: [1] "albert", 'betty', "candy"

name_2 = c("xena","yoda","zebra")
name_2

# numeric class. does not need quotation marks. 
age <- c(21, 22, 23)
age

class(name_1) # [1] "character"
class(age) # [1] "numeric"
is.vector(name_1) # [1] TRUE
is.vector(age) # [1] TRUE

#(b) Matrix
# rows and columns

x <- matrix(c(1,2,3,4), nrow=2, ncol=2)
x

#(c) List (very different from Python Lists)
# "special" vector that contain elements of different types

y <- list(name ="mike", gender = "M", age ="20", company="ABC Coy")
y

# usually used as a default output mode.
# often times you would not know the data type that is being output. 

#(d) Dataframe
# used for storing tables. it is a list of vectors of equal length
name <- c("mike","lucy","john")
age <- c(20, 25, 30)
# logical class type needs to be in ALL CAPS or in Character Caps i.e F, T
student <- c(FALSE, TRUE, TRUE)

profile1 <- data.frame(name, age, student)
profile1

#IMPORTANT: If you use the same name, it will overwrite 
#the previous declaration