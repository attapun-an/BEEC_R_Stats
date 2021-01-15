## BEEC Course Stats Tutorial
## This script will load data, plot it and do a regression analysis (cry emoji)
## Attapun Anivat | attapunanivat@gmail.com | attapun-an

# removes all objects from the current workspace (R memory)
rm(list=ls())

# Loading Libraries ----
library(ggplot2)

# Loading Data ----
limpetdata <- read.table(file.choose(),header=TRUE)  # Woow, Biology is cool~~~
limpetdata <- read.table('Data/limpet-data.txt', header = TRUE) %>%   # But we're doing it the proper way (cause reproducibility) 
dplyr::rename(shoreheight = height)

head(limpetdata)
str(limpetdata)
  
# Plotting ----
ggplot(limpetdata, aes(x = shoreheight, y = width)) + geom_point()



# Descriptive Stats ---- 
summary(limpetdata)
mean(limpetdata$width)
sd(limpetdata$width)

# Regressions ----

model_width_shoreheight <- lm(width ~ shoreheight, data = limpetdata)

summary(model_width_shoreheight)
plot(model_width_shoreheight)
       
     