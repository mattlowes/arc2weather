#' reads in binary file from arc2 weather ftp
#'
#' @param fileUrl web location of ftp
#' @return data.frame with the weather data
#' @examples
#' add(1, 1)
#' add(10, 1)

read_arc_binary <- function(fileUrl){

  ### this function gets ARC2 data from the ftp site and converts it to a raster
  ### The resulting data are a list of rasters >> to be used for some raster math later
  conInfo <- gzcon(url(fileUrl))

  dat <- readBin(conInfo, numeric(), n = 1e6, size = 4, endian = 'big')
  close(conInfo)

  return(dat)

}