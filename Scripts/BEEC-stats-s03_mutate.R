## BEEC Course Stats Tutorial (Session 3)
## This script will load data and make new columns
## Attapun Anivat | attapunanivat@gmail.com | attapun-an

rm(list=ls())  #removes all objects

# Load libraries ----
library(ggplot2)
library(dplyr)
library(tidyr)

# Load data ----
limpetdata <- read.table('Data/limpet-data.txt', header = TRUE)   # But we're doing it the proper way (cause reproducibility) 

head(limpetdata)
str(limpetdata)

# Manipulate data ----
limpetdata <- limpetdata %>%
  mutate(ratio = height/width, 
         height_log10 = log10(height),
         height_sqrt = sqrt(height))
