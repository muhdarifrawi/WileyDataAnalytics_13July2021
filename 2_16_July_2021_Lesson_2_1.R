## Creating a vector that says out your name

g <- "Hello"
yourname <- readline("what is your name? ")

paste(g,yourname)

#------

sentence_1 <- "The quick brown fox jumps over the lazy dog."
sentence_1
is.vector(sentence_1)

strsplit(sentence_1, " ")

# we can see the elements inside the list this way:
strsplit(sentence_1, " ")[[1]]

# we can also assign it into a vector
words <- strsplit(sentence_1, " ")[[1]]

# to access each individual indexes
words[4]
# to access a length of index
words[4:8]

## Unlike all other programming laguage, R starts with '1' to make it easy ## 
## for new users.                                                          ##

words[c(1,3)]
match(c("the", "fox"), words)

# lazy fox quick dog
words[c(8,9,2,4)]

# "the"  "dog." "&"    "lazy" "fox" 
c(words[c(7,9)], "&" , words[c(8,4)])

# last 6 characters. default for this function.
talil(words)
# to offset
tail(words, 1)
# get first 6 characters
head(words)
# to offset
head(words,1)
head(words,2)
# first and last characters
c(head(words,1), tail(words,1))

# what happens if you do this:
strsplit(sentence_1, "")

# change TO UPPER case
cap <- toupper(words)
cap

# change TO LOWER case
nocap <- tolower(cap)
nocap

# we usually use tolower when dealing with textual analysis
# textual data primarily comes from social media
# R is designed to read lower case characters so it may cause issues if 
# you have upper case.

# regular expression, RegEx.
# search and replace using RegEx.

sentence_2 <- "A wolf in cheap clothing"
sentence_2

# gsub does search and replace and takes in 3 arguments
# first: what to find, second: what to replace it with, third: which vector to
# run it on.
gsub("cheap", "sheep's", sentence_2)

# if you need help/hide, use '?'
# example:
?gsub
