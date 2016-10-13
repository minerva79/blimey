# findTerm function:
#     search for specific term across files; return list of lines which term occur

findTerm <- function(x, file.list){
  line.ret <- lapply(file.list, function(vv) grep(x, readLines(vv, warn=FALSE)))
  names(line.ret) <- file.list
  line.ret2 <- invisible(lapply(names(line.ret), function(ww){
    obg <- unlist(line.ret[ww])
    if(length(obg)){
      obh <- readLines(names(line.ret[ww]), warn=FALSE)[obg]
      paste(paste0("line:", obg), obh, sep="   ")  
    }else{
      paste('search term:', x, 'does not appear in', ww)
    }
  }))
  names(line.ret2) <- file.list
  return(line.ret2)
}

## Example: to find the occurrence of "read.table" from R-scripts within a directory"
file.list <- list.files(pattern="\\.r$", ignore.case=T)
findTerm("read.table", file.list)