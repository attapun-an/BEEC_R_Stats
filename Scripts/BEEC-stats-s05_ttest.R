## BEEC Course Stats Tutorial (Session 5)
## This script will load data and make new columns
## Attapun Anivat | attapunanivat@gmail.com | attapun-an

rm(list=ls())  #removes all objects

# Load libraries ----
library(ggplot2)
library(dplyr)
library(tidyr)

# Load data ----
headupdata <- read.table('Data/Headupdata.txt', header = TRUE)   # But we're doing it the proper way (cause reproducibility) 

head(headupdata)
str(headupdata)


# Manipulate data ----

headupdata_long <- pivot_longer(headupdata, cols = c(male, female),
                                names_to = "sex", values_to = "headup") %>% 
                   arrange(desc(sex))


# Analyzing data----


# summary stats 
summary(headupdata)
sd(headupdata$male)

# Welch t-test 
t.test(headupdata$male, headupdata$female, paired = FALSE) # this doesn't assume the variences are equal (more flexible)

# Student's t-test
t.test(headupdata$male, headupdata$female, paired = FALSE, var.equal = TRUE)    # this one assumes variances are equal

# Data analysis for long form ----

# t test (response ~ explanatory)
t.test(headup~sex, data = headupdata_long)

# plot of data
ggplot(headupdata_long, aes(x = sex, y = headup))+
  geom_boxplot()
  