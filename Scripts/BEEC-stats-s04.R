## BEEC Course Stats Tutorial (Session 4)
## This script will load data and do a correlation analysis
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

# Analysis ----

# Runs a pearson correlation analysis | width vs height
(cor_WH <- cor.test(limpetdata$width, limpetdata$height))
