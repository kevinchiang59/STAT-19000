# Dear Kevin Chiang,
# 
# Here is the feedback for your answer to Project 3.
# 
# Score: 6.5/10
# -1, please include the output of your code
# -0.5, please include explanations for your code
# -2, incorrect code for Q1
# 
# Detailed comments on Q1
# - Let's take a look at your code, and understand it 
#   bit by bit:
#   - From the most inner part, you have
#     ```myDF$UniqueCarrier == "UA"```
#     This tells R to create a vector of TRUE and FALSE,
#     depending on whether the carrier is "UA".
#     The vector is of length 7140596 (the number of 
#     flights in 2005!).
#   - Then, you have
#     ```myDF$UniqueCarrier == "UA" | myDF$UniqueCarrier == "DL"```
#     This will put two vectors of TRUE and FALSE values,
#     and compare them element-wise:
#       For the first element, if either of them is TRUE, 
#       then return TRUE.  For the second element, if either
#       of them is TRUE, then return TRUE...
#     In the end, you will have a vector of TRUE and FALSE
#     in its 7140596 values.
#   - What information does the vector contain?  
#     For example, if the first element is TRUE, then it 
#     means that the first flight was operated by UA *or*
#     DL.  
#     In general, the TRUE and FALSE values separate the
#     flights into two groups: UA/DL flights, and the others.
#   - Then, you used the function table() to see the 
#     the frequency of each unique value in the vector.
#     That is, R counted the number of TRUE values and the
#     number of FALSE values.
#     In other words, you got the number of UA/DL flights
#     and the number of non-UA/DL flights.
#     (The function sort() is not needed.)
#   So hopefully now you see why your code cannot answer
#   the question of comparing the numbers of UA and DL flights.
# - Then, how should we fix it?
#   Using the function table() and checking the conditions
#   on the variable "UniqueCarrier" are both good ideas.
#   I would suggest that you try this code first:
#   ```table(myDF$UniqueCarrier)```
#   Basically the output already gives what you need!
#   However, you can restrict the output to UA and DL
#   counts only.  I would suggest that you explore how to 
#   do so by yourself first, and let us know if you have
#   any questions.
#   Hint: You can use the square brackets (i.e., indexing)
#   after the function table() to impose some conditions.
#
# Remarks: Let us know whenever you have questions - We
# are more than happy to help!
#  
# Best,
# Yumin

myDF = read.csv("/depot/statclass/data/dataexpo2009/2005.csv")
sort(table(myDF$UniqueCarrier == "UA" | myDF$UniqueCarrier == "DL"))
mean(myDF$ArrDelay[myDF$DayOfWeek == 6 | myDF$DayOfWeek == 7], na.rm = T)
taxiDF = read.csv("/depot/statclass/data/taxi2018/yellow_tripdata_2017-06.csv")
sort(table(taxiDF$passenger_count))
mean(taxiDF$trip_distance)
