# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
ws<-c(20,31,31,26,5,40,10,24,31,25,26,20)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
ls<-c(25,25,24,15,14,7,38,3,34,23,6,36)

# Combine your two vectors into a dataframe
my.data<-data.frame(ws,ls)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
my.data$diff = ws - ls

# Create a new column "won" which is TRUE if the Seahawks won
my.data$won = my.data$diff > 0

# Create a vector of the opponent names corresponding to the games played
opponent.names = c("Saints", "Bills", "Patriots", "Eagles", "Buccaneers", "Panthers", "Packers", "Rams", "Cardinals", "49ers", "Lions", "Falcons")

# Assign your dataframe rownames of their opponents
rownames(my.data) <- opponent.names
colnames(my.data) <- c("Winner", "Loser", "Difference", "Seahawks Win?")

# View your data frame to see how it has changed!
View(my.data)