
hero <- data.frame(
    characters = c(
      "Superman","Batman", "Wonder Woman", "Flash", "Aquaman","Cyborg"
    ),
    price = c(50, 45, 40, 43, 30, 25),
    rating = c(4, 6, 3, 2, 1, 5)
    
)

hero

# check for the structure 
str(hero)

hero$characters

# does not change the original dataframe
as.character(hero$characters)
# you will need to reassign it to replace the original dataframe
hero$characters <- as.character(hero$characters)

hero$rating
hero$price

# vector result
hero[["characters"]]
# list result
hero["characters"]

# using numeric column index. [[1]] returns the "Characters" vector result.
hero[[1]]

# using [,<col>] to specify which column to print out
hero[,1]
hero[,"characters"]

# if you have a column whose first letter of the word is the only character,
# you can just call out the letter
hero$c

# the left side is for rows
hero[2,]
hero[4,]

# print multiple rows
# rows 1 and 3
hero[c(1,3),]
# rows 1 to 3
hero[1:3,]

# print multiple columns
# cols 1 and 3
hero[,c(1,3)]
# cols 1 to 3
hero[,1:3]


# === conditional subsetting ===

# REMEMBER: FILTER on ROWS, SELECT on COLS

# shows all columns
hero[hero$price>40,]

# shows only characters
hero[hero$price>40,"characters"]
# shows quantity of characters
length(hero[hero$price>40,"characters"])
# equals to
hero[hero$price==40,"characters"]
# less than
hero[hero$price<40,"characters"]
hero[hero$price<40,1]
# more or equal than 
hero[hero$price>=40,"characters"]
# less or equal than
hero[hero$price<=40,"characters"]
# not equals to
hero[hero$price!=40,"characters"]

# using AND condition
hero[hero$price>40 & hero$price<50,"characters"]
hero[hero$price>40 & hero$rating>4,"characters"]

# using OR condition
hero[hero$price>40 | hero$rating>4,"characters"]

# both conditions
hero[hero$price>40 & (hero$rating>4 | hero$price>50),"characters"]

# match by text
hero[hero$characters == "Batman", "rating"]

# %in% is similar to an OR condition
hero[hero$characters %in% c("Batman", "Superman"), "rating"]
hero[hero$characters=="Batman" | hero$characters=="Superman","rating"]

# get multiple columns
hero[hero$price>40, c("characters","rating")]
# or you can do this instead but it's hard to understand what you are looking at
hero[hero$price>40, c(1,3)]
# you can do it this way too. this won't affect your original dataframe
hero[hero$price>40, c(1,3,2)]

# to store the output
hero2 <- hero[hero$price>40, c(1,3,2)]
hero2

# to give column names
colnames(hero2)
names(hero2)

# renaming column names
names(hero2) <- c("personalities","score","value")
hero2

# to only see columns 1 and 3
hero2[,c(1,3)]
hero2[,-2]

hero2[,-c(2,3)]
hero2[,c(-2,-3)]

hero2[,-c(hero2$score)]

# view with a capital V
View(hero2)

# attach and detach
hero
price
attach(hero)
price
detach(hero)
price

# practical usage of attach. using on sorted data.
attach(hero)
sorted1 <- hero[order(price),]
sorted1

# head or tail of data
head(sorted1,3)
tail(sorted1,3)

# sort by descending order. use minus sign.
sorted <- hero[order(-price),]
sorted

# sorted by alphabetical order
hero
attach(hero)
sorted3 <- hero[order(characters),]
sorted3

sorted4 <- hero[order(characters, decreasing = T),]
sorted4

# make sure that you detach after using it. as it will take up memory.
detach(hero)
