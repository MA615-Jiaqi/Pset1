myName <- "Jiaqi Sun"

#1. Create the following vector:
#a)
v1 <- 1:20
v1

#b)
v2 <- 20:1
v2

#c)
v3 <- seq(1, 19, 2)
v3

#d)
v4 <- rep(c(3,7,11), times = 10)
v4

#e)
v <- rep(c(3, 7, 11), 11)
v5 <- head(v, -2)
v5

#2. Create a vector of the values of 𝑒^𝑥𝑠𝑖𝑛(𝑥) at x = 3.0,3.1,3.2,…,6.0
x <- seq(3, 6, by=0.1)
x1 <- exp(x)*sin(x)
x1

# 3.Calculate the following:
i <- 10:100
sum1 <- sum(i^3 + 4*i^2)
sum1

# 4.Use the function paste to create the following character vectors of length 30
# (a). (“label 1”, “label 2”, ….., “label 30”). Notice: there is a single space between ‘label’ and number
#following, Name str1.
str1 <- paste("label", 1:30)
str1
 
# b) (“function1”, “function2”, …, “function30”). In this case, there is no space between ‘function’ and
#number following, Name str2.
str2 <- paste0("function", 1:30, sep = "")
str2

#5. Print the vector, “c(1,‘function’,NA, seq(1,5,2), 0.125)”, using paste() or paste0(), 
# as a string, Name vs.
x <- c(1,'function',NA, seq(1,5,2), 0.125)
vs <- paste(x, sep = " ", collapse = ",")
vs

# 6. Create a 3x3 matrix A from 1 to 9, and find A3, Name m1_ans
A <- matrix(1:9, ncol=3)
A
m1_ans <- A%*%A%*%A
m1_ans

# 7.Create a matrix B with 17 rows:
B <- matrix(c(12, -12, 12), byrow = TRUE, ncol = 3, nrow = 17)
B
m2_ans <- t(B) %*% B
m2_ans

#8. Solve the following system of linear equations in five unknowns
A <- matrix(c(1,2,3,4,5,2,1,2,3,4,3,2,1,2,3,4,3,2,1,2,5,4,3,2,1), ncol=5, byrow = TRUE)
A
b <- c(7,-1,-3,5,17)
m3_ans <- solve(A,b)
m3_ans

# 9a. Create two functions function1 and function2, giving a vector 𝑥𝑣 = (0.0, 0.1, ..., 0.8, 0.9, 1.0)
xv <- seq(0, 1, 0.1 )
xv
index = 1:length(xv)

function1 <- function(x){
  x^c(1:length(xv))
}
  
func1_ans <- function1(xv)
func1_ans

#9b
function2 <- function(x){
  (x^index)/index
}

func2_ans <- function2(xv)
func2_ans

#9c
function3 <- function(x, n) {
  1 + sum((x^(1:n))/(1:n))
}
func3_ans <- function3(xv, length(xv))
func3_ans

# 10 Create two functions to covert the temperature between Celsius(cel_to_far) and Fahrenheit(far_to_cel).
cel_to_far <- function(C=27.5){
  (C * 9/5) + 32
}

far_to_cel <- function(F=78.6){
  (F - 32) * 5/9
}

# 11. Using function to list the odd number in 1,2,3,…,1998,1999,2000, Name: odd_ans
odd <- function(){
  print(seq(1, 2000, 2))
}
odd_ans <- odd()

# 12. 
functionQ12 <- function(n) {
  tmpfn <- function(r) {
    sum(((1:r)^0.5)/(11+3.5*r^1.2))
  }
  sum(sapply(n, FUN = tmpfn))
}
sum_ans <- functionQ12(10)

# 13. Write a function that receives two inputs, a number x, and another number y, the function should return
# x or the next largest number divisible by y. hint: use the modulo operator %%.
modNumber <- function(x, y) {
  if (x %% y == 0) {
    x
  } else {
    modNumber(x + 1, y)
  }
}

# 14. Write a function using switch that returns the number of wheels of a vehicle on the following vehicles:
# - unicycle - bike - car - truck - tricycle - motorcycle Your function should use these as possible input strings.
# Name: numberOfWheels

numberOfWheels <- function(x) {
  switch(x,
         unicycle = 1,
         bike = ,
         motorcycle = 2,
         tricycle = 3,
         car = ,
         truck = 4,
         stop("Unknown input")
  )
}

# 15. Write a function called myFactorial that returns the factorial of a given natural number
myFactorial <- function(x) {
  if(x < 2) {
    x
  } else {
    x * factorial(x - 1)
  }
}

# 16. Write a function called myCustomFactorial that returns the product of natural numbers between 
# inputs x and y
myCustomFactorial <- function(x, y) {
  if (x <= 2) {
    factorial(y)
  } else if (y - x == 1){
    x * y
  } else {
    factorial(y) / factorial(y - x)
  }
}

# 17. Write a function called customRiverMean that returns the average length of rivers in the vector rivers
# shorter than an given maximum length
customRiverMean <- function(x) {
  sum = 0
  count = 0
  for (i in 1:length(rivers)) {
    if (rivers[i] < x) {
      sum = sum + rivers[i]
      count = count + 1
    }
  }
sum / count
}

#18. Write a for loop that populates a vector with the Length(ToothGrowth\$len) of the ToothGrowth 
# dataset. Your vector should only include observations of teeth 15 units or longer. 
# Name your vector longTeeth
  longTeeth <- c()
  for (i in 1:length(ToothGrowth$len)) {
    if (ToothGrowth[i,]$len >= 15) {
      longTeeth = c(longTeeth, ToothGrowth[i,]$len)
    }
  }
  print(longTeeth)

  
# 19. Use the apply family of functions to create a list of the average values of each column in MT Cars,
# use the list to assign values to averageHorsePower and averageWeight detailing the mean value of the
# horsepower and weight of the included cars.
apply(mtcars,2,mean)
averageHorsePower <- mean(mtcars$hp)
averageWeight <- mean(mtcars$wt)
  
# 20. a function that uses sapply where given a vector (𝑥1 , ..., 𝑥𝑛) and a vector (𝑦1, ..., 𝑦𝑚) and returns thevector (𝑧1
#, ..., 𝑧𝑛) where 𝑧1 = number(𝑦𝑗 < 𝑥1), 𝑧2 = number(𝑦𝑗 < 𝑥2), … , 𝑧𝑛 = number(𝑦𝑗 < 𝑥𝑛)
sapplyFunction <- function(xVec, yVec) {
  rowSums(sapply(yVec, FUN=function(y){y < xVec}) )
}
