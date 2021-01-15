## BEEC Course Stats Tutorial
## This script will load data, plot it and do a regression analysis (cry emoji)
## Attapun Anivat | attapunanivat@gmail.com | attapun-an

# removes all objects from the current workspace (R memory)
rm(list=ls())

# Loading Libraries ----
library(ggplot2)

# Loading Data ----
limpetdata <- read.table(file.choose(),header=TRUE)
limpetdata <- read.table('Data/limpet-data.txt', header = TRUE)
