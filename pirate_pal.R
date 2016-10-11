## pirate_palettes
## Generation of hexadecimal colour codes from yarrr::piratepal palettes

# environment parameters
setwd("c:/blimey")

# packages
library("plyr")
library(tidyverse)

# run manipulations of piratepal.ls object nested within yarrr::piratepal
source("piratepal_old.R")
rm(list=ls())

# input files
pal.list <- dget(file="piratepal_ls.txt") # rgb colour codes of all palette
pal.names <- pal.list %>% names %>% gsub(".pal", "", .)

# function to convert specific palette set based on defined transparency (trans) and maximum colour values (mcv) 
pirateCols <- function(names = "basel", data = pal.list, trans = 0, mcv = 255){
  require(plyr)
  pal_set <- paste(names, "pal", sep=".")
  rgbFns <- function(x, tt=trans, mm=mcv) rgb(x[1], x[2], x[3], alpha = (1 - tt) * mm, maxColorValue = mm)
  plyr::aaply(data[[pal_set]], 2,  rgbFns)
}

# Example for function
pirateCols()
pirateCols("xmen")
pirateCols(names="pony")

# Example of using pony template with iris data plot
png("my_litte_iris.png", width=640, height=480)
with(iris,plot(x=Sepal.Length, y=Petal.Length, type="n"))
sel.col <- pirateCols("pony", trans=0.6)[c("pink", "dblue", "purple2")]
with(iris, points(x=Sepal.Length, y=Petal.Length, pch=15, col=sel.col[as.numeric(iris$Species)]))
dev.off()