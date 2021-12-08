x <- "2"
y <- "1"
a <- switch(paste(x, y, sep = ""),
  "9" = "Hello Arpita",
  "12" = "Hello Vaishali",
  "18" = "Hello Nishka",
  "21" = "Hello Shubham"
)

print(a)