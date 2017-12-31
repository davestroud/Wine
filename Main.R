
###########################
# R Source code file used to create the Wine Project
# December 31, 2017
# Created by David Stroud
###########################

gpa.section.a <- c(3.13, 3.55, 2.92, 2.73, 3.0, 3.18, 2.66, 3.76)
sd(gpa.section.a)
args(sd)
gpa.section.b <- c(3.14, 3.13, 3.25, 2.93, 2.73, 3.50, 2.70, 3.23)

all.gpa <- c(gpa.section.a, gpa.section.b)

help(rnorm)

pnorm(75,85,5)

names(stackloss)
rlm(stack.loss ~ Air.Flow, data=stackloss)
