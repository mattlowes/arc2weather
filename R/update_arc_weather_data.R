#' combines the data download functions into a single function
#'
#' @param url web url of FTP
#' @param dir the directory where to find the files already downloaded
#' @return list of rasters downloaded from the FTP


update_arc_weather_data <- function(url, dir){

  currentList <- get_current_list(dir)
  fullList <- get_full_list(url)

  newAdditions <- get_new_additions(currentList, fullList, dir)

  get_raw_data(newAdditions, url)

}