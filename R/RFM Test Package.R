
library(data.table)
library(lubridate)
library(myRFMpackage)
transactions <- fread("transactions.csv")
transactions[, TransDate:=dmy(TransDate)]
RFM <- RFMfunction(transactions, 60, 20, 20)


install.packages("roxygen2")
library(roxygen2)

