% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{samples_cerrado_mod13q1}
\alias{samples_cerrado_mod13q1}
\title{Yearly samples of 13 classes on Cerrado biome from MOD13Q1 images}
\format{
A \code{sits} tibble with 61K samples. A \code{sits} tibble contains 
the following meta-data:
longitude (East-west coordinate of the time series sample in WGS 84),
latitude (North-south coordinate of the time series sample in WGS 84),
start_date (initial date of the time series),
end_date (final date of the time series),
label (the class label associated to the sample),
coverage (the name of the coverage associated with the data), and
time_series ( list containing a tibble with the values of the time series).

The training samples were collected by ground surveys 
and high-resolution image interpretation by experts from 
the Brazilian National Institute for Space Research (INPE) 
team and partners. It has 13 classes ("Dense_Tree_Savanna", "Dunes",
"Fallow_Cotton", "Millet_Cotton", "Open_Savanna", "Pasture", 
"Planted Forest", "Savanna", "Shrublands", "Soy_Corn", "Soy_Cotton", 
"Soy_Fallow", "and "Wetlands").

Each time series covers 12 months (23 data points) from the MOD13Q1 product, 
and has 4 bands ("EVI", "NDVI", "MIR", and "NIR").
}
\usage{
data("samples_cerrado_mod13q1")
}
\description{
A dataset containing a sits tibble with time series samples from Brazilian 
Cerrado biome.
}
\keyword{datasets}
