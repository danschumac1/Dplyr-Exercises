#set up
df <- mtcars
head(df)

#EX1 
#Return rows of cars that have an mpg value greater than 20 and 6 cylinders.
filter(mtcars,mpg>20,cyl==6) 

#EX2
# Reorder the Data Frame by cyl first, then by descending wt.
head(arrange(df,cyl,desc(wt)))

#EX3
#Select the columns mpg and hp
head(select(df,'mpg','hp'))
#EX4
#Select the distinct values of the gear column.
distinct(df,gear)

#EX5
#Create a new column called "Performance" which is calculated by hp divided by wt.
mutate(df, Performance = hp/wt)

#EX6
#Find the mean mpg value using dplyr.
summarise(df,avg_mpg=mean(mpg))

#EX7
#Use pipe operators to get the mean hp value for cars with 6 cylinders.
df %>% filter(cyl==6) %>% select(hp) %>% summarise(avg_hp = mean(hp))