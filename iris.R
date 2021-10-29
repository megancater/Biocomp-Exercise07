# Megan Cater
# iris.R

# clears the environment
rm(list=ls())

# reads data from iris.csv
iris<-read.table("iris.csv", header=TRUE, sep=",", stringsAsFactors=FALSE)

# prints the last 2 rows in the last 2 columns to the terminal
rows<-nrow(iris) # number of rows
cols<-ncol(iris) # number of columns
print(iris[(rows-1):rows,(cols-1):cols])

# gets the number of observations for each species included in the data set
num_obs<-table(iris$Species)

# gets rows with Sepal.Width > 3.5
width3.5<-iris[iris$Sepal.Width>3.5,]

# writes the data for the species setosa to a comma-delimited file names 'setosa.csv'
setosa<-iris[iris$Species=="setosa",] # data for species setosa
write.table(setosa, "setosa.csv", row.names=FALSE, col.names=TRUE, sep=",")

# calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
average<-mean(iris[iris$Species=="virginica",3])
minimum<-min(iris[iris$Species=="virginica",3])
maximum<-max(iris[iris$Species=="virginica",3])
