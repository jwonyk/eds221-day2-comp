# Making vectors

# Character vector
dogs <- c("teddy", "khora", "waffle", "banjo")
class(dogs)
typeof(dogs)

# Numeric vector
weights <- c(50, 55, 25, 35)
class(weights)
typeof(weights)

# Integer vector
dog_age <- c(5L, 6L, 1L, 7L)
class(dog_age)
typeof(dog_age)

is.numeric(dog_age)

# What happens when we combine classes?
dog_info <- c("teddy", 50, 5L)
dog_info
class(dog_info)
typeof(dog_info)
is.character(dog_info)

# Named elements
dog_food <- c(teddy = "purina", 
              khora = "alpo", 
              waffle = "fancy feast", 
              banjo = "blue diamond")
class(dog_food)
typeof(dog_food)
dog_food

# Accessing bits of vectors
dog_food[2]
dog_food["khora"]
dog_food[1:3]

# Warm up to for loops
i <- 4
dog_food[i]
# key points: 
# index by position
# define positions with variables

dog_food[1] <- "BURRITOS!"
dog_food

# Matrices
fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9),
                    ncol = 2, nrow = 2, byrow = FALSE)
fish_size
typeof(fish_size)
class(fish_size)

fish_size[1, 2]
fish_size[,2]
fish_size[1,]

# Lists
urchins <- list("blue", 
                c(1, 2, 3),
                c("a cat", "a dog"),
                5L)
urchins

# Access data in a list
urchins[2]
# Indexing into the elements of vectors
urchins[[2]]

# Naming List
tacos <- list(toppings = c("onion", "cilantro", "guocomole"),
              fillings = c("beans", "meat", "veggies"),
              price = c(6.75, 8.25, 9.50))
tacos
tacos$fillings

# Data frames
fruit <- data.frame(type = c("apple", "banana", "peach"),
                    mass = c(130, 195, 150))
fruit
class(fruit)

fruit[,2]
fruit[2,1] <- "pineapple"

# Select multiple elements
x <- 1:10
x[c(3, 1, 5)]
x[c(1, 1, 1)]
x[c(1.2, 5.4, 7.2)]

# Exclude elements
x[-10]
x[-c(2, 4, 6, 8, 10)]
x[c(-1, 2)] # This one will return Error

# Logical Vector
x[c(TRUE, FALSE, FALSE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE)]

x[x > 3]

x[0]

# Subsetting and assigning multiple values
x <- 1:5
x[c(1, 2)] <- 2:3

x[-1] <- 4:1

# Subset rows in data frames based on conditions (logical sub-setting)
mtcars[mtcars$gear == 5, ]

mtcars[mtcars$gear == 5 & mtcars$cyl == 4, ]

# Shorthand version using the subset function
subset(mtcars, gear == 5)
subset(mtcars, gear == 5 & cyl == 4)

# Remove columns
df <- data.frame(x = 1:3,
                 y = 3:1,
                 z = c("a", "b", "c"))

df$z <- NULL
df <- df[c("x", "y")]
df[setdiff(names(df), "z")]
