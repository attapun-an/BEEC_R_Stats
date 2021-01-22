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

# Visualization and modelling ----
#a box plot of the data. 
ggplot(birddata, aes(x = Latitude, y = weight))+
  geom_boxplot()


# ANOVA (2 steps)
model_weight_lat <- lm(weight ~ Latitude, data = birddata)
anova(model_weight_lat)

# if our predictor is a discrete category, it will fit an ANOVA model,
# while if it is continuous, it will fit a regression model. 