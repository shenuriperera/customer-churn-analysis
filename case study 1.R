data=read.csv("F:\\THIRD YEAR\\2nd semester\\Statistics in Practice 1\\SpeedyCall Customer Churn Data1.csv")
summary(data)
cols <- c("customerID", "gender", "SeniorCitizen", "Partner", "Dependents",
          "tenure", "PhoneService", "MultipleLines", "InternetService",
          "OnlineSecurity", "OnlineBackup", "DeviceProtection", "TechSupport",
          "StreamingTV", "StreamingMovies", "Contract", "PaperlessBilling",
          "PaymentMethod", "MonthlyCharges", "TotalCharges", "Churn")
cols <- intersect(cols, names(data))
clean_data <- data[complete.cases(data[, cols]), ]
summary(clean_data)
View(clean_data)


table1=table(clean_data$Churn, clean_data$gender)
table2=prop.table(table1,2)*100
table2
barplot(table2,legend.text=row.names(table1),main="Compound barplot of Churn vs
Gender",xlab="Gender",ylab="Churn",col=c("grey","green4"))
table3=table(clean_data$Churn, clean_data$SeniorCitizen)
table4=prop.table(table3,2)*100
table4
barplot(table4,legend.text=row.names(table3),main="Compound barplot of Churn vs
SeniorCitizen",xlab="Senior Citizen",ylab="Churn",col=c("grey","green4"))
table5=table(clean_data$Churn, clean_data$Partner)
table6=prop.table(table5,2)*100
table6
barplot(table6,legend.text=row.names(table5),main="Compound barplot of Churn vs
Partner",xlab="Partner",ylab="Churn",col=c("grey","green4"))
table7=table(clean_data$Churn, clean_data$Dependents)
table8=prop.table(table7,2)*100
table8
barplot(table8,legend.text=row.names(table7),main="Compound barplot of Churn vs
Dependents",xlab="Dependents",ylab="Churn",col=c("grey","green4"))
table9=table(clean_data$Churn, clean_data$PhoneService)
table10=prop.table(table9,2)*100
table10
barplot(table10,legend.text=row.names(table9),main="Compound barplot of Churn vs
Phone Service",xlab="Phone Service",ylab="Churn",col=c("grey","green4"))
table11=table(clean_data$Churn, clean_data$InternetService)
table12=prop.table(table11,2)*100
table12
barplot(table12,legend.text=row.names(table11),main="Compound barplot of Churn vs
Internet Service",xlab="Internet Service",ylab="Churn",col=c("grey","green4"))
table13=table(clean_data$Churn, clean_data$Contract)
table14=prop.table(table13,2)*100
table14
barplot(table14,legend.text=row.names(table13),main="Compound barplot of Churn vs
Contract",xlab="Contract",ylab="Churn",col=c("grey","green4"))
boxplot(clean_data$tenure ~ clean_data$Churn,main = "Boxplot of Tenure vs Churn",
        xlab = "Churn",ylab = "Tenure",col = c("grey", "green4"))
boxplot(clean_data$MonthlyCharges ~ clean_data$Churn,main = "Boxplot of Monthly Charges vs Churn",
        xlab = "Churn",ylab = "Monthly Charges",col = c("grey", "green4"))
count_t_InternetService=table(clean_data$InternetService)
count_t_InternetService
count_t_PaymentMethod=table(clean_data$PaymentMethod)
count_t_PaymentMethod
count_t_Contract=table(clean_data$Contract)
count_t_Contract
library(descriptr)
tenure_freq=ds_freq_table(clean_data,tenure,5)
tenure_freq
table15=table(clean_data$Churn, clean_data$TechSupport)
table16=prop.table(table15,2)*100
table16
barplot(table16,legend.text=row.names(table15),main="Compound barplot of Churn vs
Tech Support",xlab="Tech Support",ylab="Churn",col=c("grey","green4"))
boxplot(clean_data$tenure ~ clean_data$TechSupport,main = "Boxplot of Tenure vs Tech Support",
        xlab = "Tech Support",ylab = "Tenure",col = c("grey", "green4","grey17"))