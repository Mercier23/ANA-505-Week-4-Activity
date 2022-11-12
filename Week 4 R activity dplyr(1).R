#Week 4: dplyr package

#Task: Write the function to get a dataset from Base R: HairEyeColor
#and give the dataset a new name of your choice

HairEyeColor

mydata <- as.data.frame(HairEyeColor)

#See the top rows of the data
#TASK: Write the function to see the top rows of the data

head(mydata)

View(mydata)

#Install and call the package dplyr
#TASK: Write the functions to install and call dplyr

install.packages("dplyr")
library(dplyr)

#Let's just see the hair and sex columns
#Task: Write the function to 'select' just the hair and sex columns 
#(hint: use the 'select' function)

select(mydata, Hair, Sex)

#Let's name the dataset with just the two columns, Hair and Sex
#TASK: Write the function to save the two columns as one new dataset
#and give it a name

HairAndSex = select(mydata, Hair, Sex)

View(HairAndSex)
  
#Let's get rid of the Sex column in the new dataset created above
#TASK: Write the function that deselects the sex column
#(hint: use the 'select' function to not select a -column)

select(HairAndSex, Hair)

HairAndSex <- select(mydata, Hair)

#Let's rename a column name
#TASK: Write the function that renames 'sex' to 'gender'

rename(mydata, Gender = Sex)

#Let's make a new dataset with the new column name
#TASK: Write the function that names a new dataset that includes the 'gender' column

mydata2 =  rename(mydata, Gender = Sex)

View(mydata2)
View(mydata)

#Let's 'filter' just the females from our dataset
#TASK: Write the function that includes only rows that are 'female'

female = slice(mydata, 17:32)
slice(mydata2, 17:32)
View(female)

#Let's 'group' our data by gender
#TASK: Write the function to group the data by gender (hint: group_by)

group_by(mydata2, Gender)
group_by(mydata, Sex)

print(mydata2)

#Let's see how many students were examined in the dataset (total the frequency)
#TASK: replace 'datasetname' with the name of your dataset and get the total
#TASK: After you run it, write the total here:_592___
total=mutate(datasetname, total=cumsum(Freq))

total = mutate(mydata2, total = cumsum(Freq))

View(total)

#Since we have a females dataset, let's make a males dataset
#TASK: Write the function that includes only rows that are 'male'

Male =slice(mydata, 1:16)
View(Male)

#And now let's join the males and females
#TASK: Write the function that joins the male and female rows 
#(hint: try using 'union' or 'bind_rows')

union(Male, female)

#Optional Task: add any of the other functions 
#you learned about from the dplyr package

group_by(mydata2, Hair)
print(mydata2)

group_by(mydata2, Eye)

