data <- data.frame(
  name = c("Andrew", "Ben", "Candy"),
  DOB = c("01/02/1978", "02/04/1979", "03/05/1982"),
  salary = c(4000, 8000, 10000)
)

data

# substr(x, start, stop)
substr(data$name, 1, 3)
substr(data$DOB, 1,2)
# an example of use would be extracting Year in DOB

# transform(data, new_variable = manipulation of old_variable)
data_new <- transform(data, employee_cpf = salary*0.20)
data_new

transform(data, money_contribution = ifelse(salary>6000, 600, 40))

transform(data, tax = ifelse(salary>6000, 0.10*salary, 0.05*salary))

transform(data, money_ok = ifelse(salary>=9000, "rich", ifelse(salary<9000 & salary>=5000, "so so", "sighhh..")))


# combine substr and transform
data2 <- transform(data, 
                   birth.month = substr(DOB,4,5), ## create birth.month column
                   birth.year = substr(DOB, 7,10) ## create birth.year column
)
data2
?substr

# don't need subsetting (e.g data$DOB) when using transform.
