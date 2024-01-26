1. Find the number of (unique) donor names who have your first name, embedded somewhere in the donor's name
Code used:
myDF <- read.csv("/depot/statclass/data/election2018/itcont.txt", header=F, sep="|")
myDonors <- myDF
v = unique(myDonors[ , 8])
length(v[grep("KEVIN", v)])
Output:
[1] 8156
I needed help starting this, I later learned that the desired outputs required the grep function followed by parentheses, and a comma and v. I found that there were 8156 others who shared the same first name as me.

2a. How many donors have a consecutive repeated letter in their name?
Code used:
length(v[grep("([A-Z])\\1", v)])
Output:
[1] 774063
This function and all others are basically the same as number 1, but requires a different request. the A-Z\\1 function is to find repeat letters. There are 774063 people who have repeated letters in their names.

2b. How many donors have a consecutive repeated vowel in their name?
Code used:
length(v[grep("([AEIOU])\\1", v)])
Output:
[1] 129801
There are 129801 donors who have a repeated vowel.

2c. How many donors have a consecutive repeated consonant in their name?
Code used:
length(v[grep("([B-DF-HJ-NP-TV-Z])\\1", v)])
Output:
[1] 678376
I also needed help on this. I originally thought the consonants required commas in between each one. There are 678376 users who have arepeated consonant in their name.

3. Make your own
Code used:
v[grep("CHIANG", v)]
Output (last 10 lines):
[72] CHIANG, LINDA              
[73] CHIANG, VICKI              
[74] CHIANG, SAI C.             
[75] CHIANG, YUHUNG             
[76] CHIANG, RICHARD            
[77] KHO, CHING CHIANG          
[78] CHIANG, ELVIN              
[79] CHIANG, KRISTINA           
[80] CHIANG, JANET              
[81] CHIANG, RICHARD L. 
I wanted to find the number of people who shared the same last name as me. I changed the input after grep to my last name. The output shows that there are 81 people with the same last name as me, and lists their whole names.
