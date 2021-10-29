# Megan Cater
# head.R

# clears the environment
rm(list=ls())

# test file
the_file<-"test.txt"

# number of lines to print
n<-2

# gets file content separated by newline character
data<-scan(the_file, character(), sep="\n", quote="")

i<-1

# for each line until total lines reached, prints line
while (i <= n) {
  print(data[i])
  i<-i+1
}

