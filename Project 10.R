# TA NOTES 
# Need to provide output that answers the questions. (which states for question 1 and the names of the properties).
# Score: 9/10


1.
states = sort(table(myDF$states))
states = states[states>=20]
states
This function sorts the data, orders it, and provides outputs for the states that have greater than or equal to 20 NPS properties.

2. 
zips = sort(table(myDF$zips))
zipz = zips[zips==13]
a = table(myDF$mynames) [myDF$zips==20024]
a = a[is.na(a)==FALSE]
a
This function takes out the properties that have the zipcode 20024.
