## BEEC Course Stats Tutorial (Session 6)
## This script will load data and carry out a one way anova
## Attapun Anivat | attapunanivat@gmail.com | attapun-an

rm(list=ls())  #removes all objects

# Load libraries ----
library(ggplot2)
library(dplyr)
library(tidyr)

# Load data ----
birddata <- read.table('Data/Latitudebirdsdata.txt', header = TRUE)   # But we're doing it the proper way (cause reproducibility) 

head(birddata)
str(birddata)

#a box plot of the data. 
ggplot(birddata, aes(x = latitude, y = weight))+
  geom_boxplot()
