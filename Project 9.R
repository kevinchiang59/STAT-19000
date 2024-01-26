library("RMySQL")
myconnection <- dbConnect(dbDriver("MySQL"), host="mydb.ics.purdue.edu", username="mdw_guest", password="MDW_csp2018", dbname="mdw")
easyquery <- function(x) {fetch(dbSendQuery(myconnection,x),n=-1)}
1.
myDF6 <- easyquery("SELECT m.PlayerID, m.nameFirst, m.nameLast FROM Master m JOIN CollegePlaying c ON m.playerID = c.playerID WHERE c.schoolID = 'purdue';")
myDF6
This function joints all players starting with ID, then First name, then Last.
PlayerID nameFirst    nameLast
1  allenbe01    Bernie       Allen
2  allenbe01    Bernie       Allen
3  allenbe01    Bernie       Allen
4  allenje01  Jermaine Allensworth
5  allenje01  Jermaine Allensworth
6  allenje01  Jermaine Allensworth
7  buentja01       Jay      Buente
8  buentja01       Jay      Buente
9  buentja01       Jay      Buente
10 buentja01       Jay      Buente
3.
a.
myDF7 <- easyquery("SELECT m.PlayerID, m.nameFirst, m.nameLast, p.yearID, p.SO, p. W FROM Master m JOIN Pitching p ON m.playerID = p.playerID WHERE p.SO >= 300 AND p.W >= 20;")
myDF7
This function takes players that achieved 300 or more strikeouts and 20 or more wins.
PlayerID nameFirst   nameLast yearID  SO  W
1  baldwla01      Lady    Baldwin   1886 323 42
2  baldwma01      Mark    Baldwin   1889 368 27
3   bluevi01      Vida       Blue   1971 301 24
4  buffich01   Charlie  Buffinton   1884 417 48
5  carltst01     Steve    Carlton   1972 310 27
6  clarkjo01      John   Clarkson   1885 308 53
7  clarkjo01      John   Clarkson   1886 313 36
8  dailyhu01      Hugh      Daily   1884 469 27
9  fellebo01       Bob     Feller   1946 348 26
10 galvipu01       Pud     Galvin   1884 369 46
b.
myDF8 <- easyquery("SELECT m.PlayerID, m.nameFirst, m.nameLast, p.yearID, p.SO, p. W FROM Master m JOIN Pitching p ON m.playerID = p.playerID WHERE p.SO >= 300;")
myDF8
This function shows the years and the players who have acheved 300 or more strikeouts.
PlayerID nameFirst   nameLast yearID  SO  W
1  baldwla01      Lady    Baldwin   1886 323 42
2  baldwma01      Mark    Baldwin   1889 368 27
3   bluevi01      Vida       Blue   1971 301 24
4  buffich01   Charlie  Buffinton   1884 417 48
5  carltst01     Steve    Carlton   1972 310 27
6  clarkjo01      John   Clarkson   1885 308 53
7  clarkjo01      John   Clarkson   1886 313 36
8  dailyhu01      Hugh      Daily   1884 469 27
9  fellebo01       Bob     Feller   1946 348 26
10 galvipu01       Pud     Galvin   1884 369 46
2.
myDF9 <- easyquery("SELECT m.PlayerID, m.nameFirst, m.nameLast, p.yearID, p.SO, p. W FROM Master m JOIN Pitching p ON m.playerID = p.playerID WHERE p.SO >= 300 AND p.W >= 20 GROUP BY p.yearID;")
myDF9                   
This function finds the pitchers who have pitched 300 or more strikouts.
 PlayerID nameFirst    nameLast
1  allenbe01    Bernie       Allen
2  allenbe01    Bernie       Allen
3  allenbe01    Bernie       Allen
4  allenje01  Jermaine Allensworth
5  allenje01  Jermaine Allensworth
6  allenje01  Jermaine Allensworth
7  buentja01       Jay      Buente
8  buentja01       Jay      Buente
9  buentja01       Jay      Buente
10 buentja01       Jay      Buente
                   
