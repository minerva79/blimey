## pirate_palettes
## Manipulation of the new colour palettes (yarr::piratepal) for without loading package

# environment parameters
setwd("c:/in_progress")

# packages
library("plyr")
library(tidyverse)

# load manupulations
source("piratepal_old.R")
rm(list=ls())

# input files 
pal.list <- dget(file="piratepal_ls.txt") # colour codes of all palette 
pal.names <- pal.list %>% names %>% gsub(".pal", "", .)

palCols <- function(names = "basel", data = pal.list, trans = 0, mcv = 255){
  require(plyr)
  pal_set <- paste(names, "pal", sep=".")
  rgbFns <- function(x, tt=trans, mm=mcv) rgb(x[1], x[2], x[3], alpha = (1 - tt) * mm, maxColorValue = mm) 
  plyr::aaply(data[[pal_set]], 2,  rgbFns)
}

# Example for function
palCols()
palCols("xmen")
palCols(names="pony")

# Example plot with iris data
with(iris,plot(x=Sepal.Length, y=Petal.Length, type="n"))
sel.col <- palCols("pony")[c("pink", "dblue", "purple2")]
with(iris, points(x=Sepal.Length, y=Petal.Length, col=sel.col[as.numeric(iris$Species)]))