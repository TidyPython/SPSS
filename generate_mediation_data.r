# set seed 
set.seed(12)

Temperature<-seq(from = 65, to = 100, length.out = 100)

Error_1<- rnorm(100, 0, 5)
NFD<-0.04*Temperature+Error_1
NFD<-round(Hot_feeling, digits = 0)
summary(NFD)

Error_2<- rnorm(100, 0, 1)
Sales<-3*NFD+Error_2
Sales<-round(Sales,digits = 0)
print(Sales)

# path a
result1<-lm(NFD~Temperature)
summary(result1)

# path c
result2<-lm(Sales~Temperature)
summary(result2)

# path b and c'
result3<-lm(Sales~Hot_feeling+Temperature)
summary(result3)

df <- data.frame (X  = Temperature,
                  M = NFD,
                  Y= Sales)
print(df)

write.csv(df,"mediation_hypothetical_data.csv", row.names = FALSE)

