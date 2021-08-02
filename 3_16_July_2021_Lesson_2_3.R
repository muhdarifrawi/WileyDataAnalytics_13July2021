# dataframe

df1 <- data.frame(name = c("Andrew", "Bruce", "Carol", "Danny"),
                  married_year = c(2016, 2015, 2016, 2008))

df2 <- data.frame(birth_place = c("Singapore",
                                  "Malaysia",
                                  "Thailand",
                                  "Indonesia"),
                  birth_year = c(1988,
                                 1990,
                                 1989,
                                 1984))

# some good habits is to differentiate how you assign vectors. 
# outside vectors with '<-' and the insides with '='.
# write variable names with snake case 'an_example'.

# print out only the first column, the 'name' column.
df1$name
# print out married_year column
df1$married_year
# print out the structure of the vector
str(df1)

# add column to the right of df1
# the column must have the same number of rows as the dataframe
df1$profession <- c("analyst", "data scientist", "accountant", "business man")
df1

# using cbind(), column bind, to combine columns
cbinded_df <- cbind(df1, df2)
cbinded_df

# create dataframe with one column
df3 <- data.frame(salary = c(5000, 6000, 5500, 6500))
cbinded_df <- cbind(cbinded_df, df3)
cbinded_df

# alternative way to combine column
new_df <- data.frame(df1, df2)
new_df

# create new rows
new_rows <- data.frame( name = c("Elson", "Freddy"),
                        married_year = c(2009, 2010),
                        profession = c("lawyer", "dentist"),
                        birth_place = c("UK", "China"),
                        birth_year = c(1985, 1996),
                        salary = c(6000, 9000)
                      )
new_rows
# ensure that your variables have similar spelling. 
# if there are no capitals, there should not be any capitalization.

# combing using rbind(), row bind
new_data <- rbind(cbinded_df, new_rows)
new_data

