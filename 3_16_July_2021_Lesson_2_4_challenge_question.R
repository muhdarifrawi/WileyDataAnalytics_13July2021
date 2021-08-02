staff_data <- data.frame(name = c("Adam", "Bruce", "Carol", "David"),
                         role = c("director", "engineer", "finance support",
                                  "marketing"),
                         stringsAsFactors = F
                         )

new_role <- data.frame(old_title = c("engineer", "finance support", "marketing",
                                     "mentor", "manager"),
                       new_title = c("data scientist", "finance analyst",
                                     "marketing specialist", "guru",
                                     "managememnt specialist"),
                       stringsAsFactors = F
                       )

# stringsAsFactors can specify if you want your strings to retain as strings. 
str(staff_data)
str(new_role)

##  (a) Outer Join (Full Outer Join)
##  ---------------------------------
merge(x = staff_data,
      y = new_role,
      by.x = "role",
      by.y = "old_title",
      all = "TRUE")

