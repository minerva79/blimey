# packages
libs <- c("plyr", "tidyverse", "RColorBrewer")
lapply(libs, require, character.only = T)
rm(libs)

# set environment
setwd("c:/dev/blimey")

# sink source codes on brewer.pal function for reference
sink("brewerpal.R")
brewer.pal
sink()

# brewer.pal === switch list that returns hexadecimal colour codes based on two arguments
#         - number of colours returned ("n", where n >= 3 and n <= maximum number of colours in named set)
#         - name of colour palettes ("name") from the possible 18 sequenital, 9 diverging and 8 qualitative palettes

qcol <- c(8,8,12,9,8,9,8,12)
names(qcol) <- c("Accent", "Dark2", "Paired", "Pastel1", "Pastel2", "Set1", "Set2", "Set3")

dcol <- rep(11, 9)
names(dcol) <- c("BrBG", "PiYG", "PRGn", "PuOr", "RdBu", "RdGy", "RdYlBu", "RdYlGn", "Spectral")

scol <- rep(9, 18)
names(scol) <- c("Blues","BuGn","BuPu","GnBu", "Greens", "Greys", "Oranges", "OrRd", "PuBu", "PuBuGn", "PuRd", "Purples", "RdPu", "Reds", "YlGn", "YlGnBu", "YlOrBr", "YlOrRd")

all<-c(qcol, dcol, scol)
all.cols <- lapply(names(all), function(x) lapply(3:all[x], function(y) brewer.pal(y, x)))
names(all.cols) <- names(all)

dput(all.cols, "brewerpal_cols.txt")

all.rgb <- lapply(all.cols, function(x) lapply(x, col2rgb))
dput(all.rgb, "brewerpal_rgb.txt")