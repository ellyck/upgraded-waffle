#' Concatenate a directory of CSV files into one Data Frame
#'
#' This function allows you to read in a directory of CSV files with the same (or different) headers and merge them into one big data frame.

#' Credits: Hadley Wickham, flodel
#' https://stackoverflow.com/questions/23190280/issue-in-loading-multiple-csv-files-into-single-dataframe-in-r-using-rbind
#' https://stackoverflow.com/questions/9807945/consolidating-data-frames-in-r

#' @param dir the directory containing CSV files that are to be concatenated. Default is current working directory.
#' @keywords  data frame df csv list concatenate
#' @export
#' @examples
#' dfcat("~/Desktop/CSV Files") # reads in CSV files from the specified directory and merges them into one big data frame.

dfcat <- function(directory = getwd()) {
  setwd(directory)
  files <- dir(directory)
  print(files)  
  require(plyr)
  data.list <- lapply(files, read.csv)
  data.cat <<- do.call(rbind.fill, data.list)
  }