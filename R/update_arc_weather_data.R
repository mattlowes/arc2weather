#' combines the data download functions into a single function
#'
#' @param url web url of FTP
#' @param dir the directory where to find the files already downloaded
#' @export
#' @return list of rasters downloaded from the FTP


update_arc_weather_data <- function(dir){

  currentList <- get_current_list(dir)
  fullList <- get_full_list()

  new_additions <- get_new_additions(currentList, fullList, dir)

  get_raw_data(listToAccess = new_additions, dir = dir)
  update_current_list(dir)

  create_master_raw_data(set_data_directory(dir))

  clean_data_directory(set_data_directory(dir))

}
