#group1
x <- runif(100,0,1)
y <- runif(100,0,1)
f1 = data.frame(x, y)

#group2
x <- runif(100,3,4)
y <- runif(100,0,1)
f2 = data.frame(x, y)

# group3
x <- runif(100,0,1)
y <- runif(100,3,4)
f3 <- data.frame(x, y)

#group4
x <- runif(100,3,4)
y <- runif(100,3,4)
f4 <- data.frame(x, y)

#Bringing Group1 and Group2 together
m1 = merge(f1, f2, by = c("x","y"), all = TRUE)
#plot(m1)

#Bringing Group3 and Group4 together
m2 = merge(f3, f4, by = c("x","y"), all = TRUE)
#plot(m2)

#Bringing all four groups together
m3 = merge(m1, m2, by = c("x","y"), all = TRUE)
plot (m3)

library(foreign)
write.arff(m3, "points.arff", eol ="\n")
