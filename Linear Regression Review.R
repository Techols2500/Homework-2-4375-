df <- read.csv("Software_Profesional_salaries.csv")
head(df)

str(df)

df$Job.Title <- as.factor(df$Job.Title)
df$Location <- as.factor(df$Location)
str(df) 

levels(df$Location) 

plot(df$Location, df$salary) 

summary(df$salary) 

which(df$salary > 1000000000) 

temp <- df[order(df$salary),]
tail(temp) 

df <- df[-18640,]

plot(df$Location, df$salary) 

df$salary.us <- df$salary * 0.013 
head(df$salary.US) 

set.seed(1234)
i <- sample(1:nrow(df), nrow(df)*0.8, replace = FALSE)
train <- df[i,] 
test <- df[-i,]

lm2 <- lm(Salary.us~Location+Ratining, ) 


pred <- predict(lml, newdata=test) 

cor(pred, test$Salary.US) 
mean((pred-test$Salary.US)^2)



                 


