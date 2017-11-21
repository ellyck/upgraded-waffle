#' Convert XLS to CSV

#'
#' This function converts a .xlsx or .xls file into .csv files to the chosen directory and merges the sheets together into a single data frame. 
#'This function is dependent on installing the gnumeric package via command line or through some other method. See the resource for how to install on Linux.

#' Credits: Chris Wallace
#' Adapted from: https://cwcode.wordpress.com/2014/04/11/reading-xlsx-files-into-r-quickly/
#' Resource: https://linuxconfig.org/converting-xlsx-excel-format-files-to-csv-on-linux

#' @param filename the Excel file to be split into .csv files.
#' @param out.dir the directory that the .csv files are to be written to. Default is current working directory.

#' @keywords convert xlsx xls excel spreadsheet csv
#' @export
#' @examples convert.xls(filename="Spreadsheet.xlsx") # writes out spreadsheet files as CSV to working directory


convert.xls <- function(filename, out.dir=getwd()) {
  	basenames <-gsub(".xlsx|xls", ".csv", filename)
  	f2 <- paste0("'", basenames,"'")
  	system(paste0("ssconvert -S '", filename, "' ", f2))
  	
  	out.files <- list.files(dirname(f2),pattern=basenames, full.names=FALSE) 
  	data.list <-  lapply(out.files, read.csv, check.names=FALSE)
  	data.cat <- do.call(rbind, data.list)
 
 }

