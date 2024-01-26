install.packages("RMySQL")
library("RMySQL")
myconnection <- dbConnect(dbDriver("MySQL"), host="mydb.ics.purdue.edu", username="mdw_guest", password="MDW_csp2018", dbname="mdw")
easyquery <- function(x){fetch(dbSendQuery(myconnection, x), n=-1)}

myDF5 <-easyquery("SELECT m.nameFirst, m.nameLast, p.playerID, p.yearID, sum(p.50) 'FROM Master m JOIN Pitching p ON m.playerID = p.playerID GROUP BY p.playerID")

myDF5[myDF5$`sum(p.SO)`== max(myDF5$`sum(p.SO`),]
myDF5

myDF6 <- easyquery("SELECT m.playerID, p.yearID, m.nameFirst, m.nameLast FROM Pitching p JOIN Master m ON p.playerID = m.playerID WHERE p.playerID = 'ryanno01'")

myDF6[myDF6$yearID,]
myDF6