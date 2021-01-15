## Following Instructions from BEEC Stats session 1: Getting Started in r
## Basic stuff on installing and using r ... 
## Attapun Anivat | attapunanivat@gmail.com | attapun-an


# Sample function (kinda cool) 
dice <- sample(c(1,2,3,4,5,6), size = 1, replace = TRUE)
dice

#### Example Script ####
#first we tell R about our two samples
control <- c(9.2,10.0,10.0,9.7,10.1,9.4,9.5,10.5,10.2,10.1)
experimental <- c(11.0,9.3,9.3,10.1,10.8,
                  9.6,10.2,10.0,10.9,10.3)

#Then we get R to provide summary statistics for each sample
summary(control)
summary(experimental)

#And finally we ask R to do a t-test
t.test(control, experimental, paired = FALSE)


# ----
# The rest of the script was just loading packages. ez. 