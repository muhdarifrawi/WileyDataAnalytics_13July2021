# print sequence of numbers
seq(from = 1, to = 5)

?seq

# increment by 0.5
seq(from = 1, to = 5, by = 0.5)

# repeating sequence. output is similar to seq() without additional param.
rep(1:5)

# with regular pattern
rep(1:5, each = 2) # repeats each number twice

rep(1:5, each = 4) # repeats each number 4 times

# combining rep and seq
rep(seq(from = 1, to = 5, by = 0.5), each = 2)

# advance vector. vector with index positions
scores <- c("Q1" = 30,
            "Q2" = 25,
            "Q3" = 31,
            "Q4" = 36,
            "Q5" = 39
            ) 

scores
scores[3:5]
