% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/arc2_api_download.R
\name{arc2_api_download}
\alias{arc2_api_download}
\title{Downloads data into list of tibbles by date using rnoaa API.}
\usage{
arc2_api_download(list_of_dates)
}
\arguments{
\item{vector_of_dates}{A list of raster in velox format. Shoudl be in YYYY-MM-DD format}
}
\value{
An spdf with the same format as the velox raster data. We can re-use the dates list again without passing it through the function as returned output.
}
\description{
Downloads data into list of tibbles by date using rnoaa API.
}
\examples{
arc2_api_download(c("2019-01-01", "2019-01-02"))
}
