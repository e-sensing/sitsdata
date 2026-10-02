#' @title Land Use and Land Cover in Cerrado Biome using MODIS
#' @docType data
#' @name samples_cerrado_mod13q1
#' @keywords datasets
#' @description
#' A dataset containing a sits tibble with time-series samples from Cerrado Biome in Brazil for 2000-2019.
#'
#' @format
#' A \code{sits} tibble containing 50160 samples extracted from
#' MOD13Q1 (250 meters resolution) in Cerrado Biome. Each time-series
#' covers one year of 16-day composites (2000-08-28 to 2019-09-01).
#'
#' Also, the \code{sits} tibble contains the following columns:
#' longitude (East-west coordinate of the time series sample in WGS 84),
#' latitude (North-south coordinate of the time series sample in WGS 84),
#' start_date (initial date of the time series),
#' end_date (final date of the time series),
#' label (the class label associated to the sample),
#' cube (the name of the cube from where the data was extracted), and
#' time_series (list containing a tibble with the values of the time series).
#'
#' The training samples were collected by ground surveys
#' and high-resolution image interpretation by experts from
#' the Brazilian National Institute for Space Research (INPE)
#' team and partners. It has 12 land cover classes
#' (\code{Dense_Woodland}, \code{Dunes}, \code{Fallow_Cotton}, \code{Millet_Cotton},
#' \code{Pasture}, \code{Rocky_Savanna}, \code{Savanna}, \code{Savanna_Parkland},
#' \code{Silviculture}, \code{Soy_Corn}, \code{Soy_Cotton},
#' \code{Soy_Fallow}).
#'
#' Each time series covers 12 months (23 data points) from the Modis product,
#' and has two spectral bands (\code{MIR}, \code{NIR}) and two spectral indices
#' (\code{EVI}, \code{NDVI}).
#'
#' @usage data("samples_cerrado_mod13q1")
#'
NULL

#' @title Land Use and Land Cover in Mato Grosso using MODIS
#' @docType data
#' @name samples_matogrosso_mod13q1
#' @keywords datasets
#' @description
#' A dataset containing a sits tibble with time-series samples from Mato Grosso State in Brazil for 2000-2016.
#'
#' @format
#' A \code{sits} tibble containing 1837 samples extracted from
#' MOD13Q1 (250 meters resolution) in Mato Grosso State. Each time-series
#' covers one year of 16-day composites (2000-09-13 to 2016-08-28).
#'
#' Also, the \code{sits} tibble contains the following columns:
#' longitude (East-west coordinate of the time series sample in WGS 84),
#' latitude (North-south coordinate of the time series sample in WGS 84),
#' start_date (initial date of the time series),
#' end_date (final date of the time series),
#' label (the class label associated to the sample),
#' cube (the name of the cube from where the data was extracted), and
#' time_series (list containing a tibble with the values of the time series).
#'
#' The training samples were collected by ground surveys
#' and high-resolution image interpretation by experts from
#' the Brazilian National Institute for Space Research (INPE)
#' team and partners. It has 9 land cover classes
#' (\code{Cerrado}, \code{Fallow_Cotton}, \code{Forest}, \code{Millet_Cotton},
#' \code{Pasture}, \code{Soy_Corn}, \code{Soy_Cotton}, \code{Soy_Fallow},
#' \code{Soy_Millet}).
#'
#' Each time series covers 12 months (23 data points) from the Modis product,
#' and has two spectral bands (\code{MIR}, \code{NIR}) and two spectral indices
#' (\code{EVI}, \code{NDVI}).
#'
#' @usage data("samples_matogrosso_mod13q1")
#'
NULL

#' @title Land Use and Land Cover in a portion of the Cerrado Using CBERS-4 AWFI
#' @docType data
#' @name samples_cerrado_cbers
#' @keywords datasets
#' @description
#' A dataset containing a sits tibble with time-series samples from Cerrado in Brazil for 2018-2019.
#'
#' @format
#' A \code{sits} tibble containing 922 samples extracted from
#' CB4_64_16D_STK (64 meters resolution) in Cerrado. Each time-series
#' covers one year of 16-day composites (2018-08-29 to 2019-08-13).
#'
#' Also, the \code{sits} tibble contains the following columns:
#' longitude (East-west coordinate of the time series sample in WGS 84),
#' latitude (North-south coordinate of the time series sample in WGS 84),
#' start_date (initial date of the time series),
#' end_date (final date of the time series),
#' label (the class label associated to the sample),
#' cube (the name of the cube from where the data was extracted), and
#' time_series (list containing a tibble with the values of the time series).
#'
#' The training samples were collected by ground surveys
#' and high-resolution image interpretation by experts from
#' the Brazilian National Institute for Space Research (INPE)
#' team and partners. It has 9 land cover classes
#' (\code{Cerrado}, \code{Fallow_Cotton}, \code{Forest}, \code{Millet_Cotton},
#' \code{Pasture}, \code{Soy_Corn}, \code{Soy_Cotton}, \code{Soy_Fallow},
#' \code{Soy_Millet}).
#'
#' Each time series covers 12 months (23 data points) from the Modis product,
#' and has four spectral bands (\code{BAND13}, \code{BAND14}, \code{BAND15}, \code{BAND16}) and two spectral indices
#' (\code{EVI}, \code{NDVI}).
#'
#' @usage data("samples_cerrado_cbers")
#'
NULL

#' @title Deforestation in Rondonia using Sentinel-2A
#' @docType data
#' @name samples_prodes_4classes
#' @keywords datasets
#' @description
#' A dataset containing a sits tibble with time-series samples from Rondonia in Brazil for 2020-2021.
#'
#' @format
#' A \code{sits} tibble containing 393 samples extracted from
#' SENTINEL-2-L2A (10 meters resolution) in Rondonia. Each time-series
#' covers one year of 16-day composites (2020-06-04 to 2021-08-26).
#'
#' Also, the \code{sits} tibble contains the following columns:
#' longitude (East-west coordinate of the time series sample in WGS 84),
#' latitude (North-south coordinate of the time series sample in WGS 84),
#' start_date (initial date of the time series),
#' end_date (final date of the time series),
#' label (the class label associated to the sample),
#' cube (the name of the cube from where the data was extracted), and
#' time_series (list containing a tibble with the values of the time series).
#'
#' The training samples were collected by ground surveys
#' and high-resolution image interpretation by experts from
#' the Brazilian National Institute for Space Research (INPE)
#' team and partners. It has 4 land cover classes
#' (\code{Burned_Area}, \code{Forest}, \code{Highly_Degraded}, \code{Cleared_Area}).
#'
#' Each time series covers 15 months (29 data points) from the Sentinel product,
#' and has seven spectral bands (\code{B02}, \code{B03}, \code{B04}, \code{B08}, 
#' \code{B8A}, \code{B11}, \code{B12}) and three spectral indices
#' (\code{EVI}, \code{NDVI}, \code{NBR}).
#'
#' @usage data("samples_prodes_4classes")
#'
NULL




#' @title Yearly deforestation samples in the Amazon Biome using Sentinel-2/2A
#' @docType data
#' @name samples_deforestation
#' @keywords datasets
#' @description
#' A dataset containing a sits tibble with time-series samples from Amazon Biome in Brazil for 2022.
#'
#' @format
#' A \code{sits} tibble containing 6007 samples extracted from
#' SENTINEL-2-L2A (10 meters resolution) in Amazon Biome. Each time-series
#' covers one year of 16-day composites (2022-01-05 to 2022-12-23).
#'
#' Also, the \code{sits} tibble contains the following columns:
#' longitude (East-west coordinate of the time series sample in WGS 84),
#' latitude (North-south coordinate of the time series sample in WGS 84),
#' start_date (initial date of the time series),
#' end_date (final date of the time series),
#' label (the class label associated to the sample),
#' cube (the name of the cube from where the data was extracted), and
#' time_series (list containing a tibble with the values of the time series).
#'
#' The training samples were collected by ground surveys
#' and high-resolution image interpretation by experts from
#' the Brazilian National Institute for Space Research (INPE)
#' team and partners. It has 9 land cover classes
#' (\code{Clear_Cut_Bare_Soil}, \code{Clear_Cut_Burned_Area}, 
#' \code{Clear_Cut_Vegetation}, \code{Forest}, \code{Mountainside_Forest},
#' \code{Riparian_Forest}, \code{Seasonally_Flooded}, \code{Water}, \code{Wetland}).
#'
#' Each time series covers 12 months (23 data points) from the Sentinel product,
#' and has  three spectral bands (\code{B02}, \code{B8A}, \code{B11}) and  three spectral indices
#' (\code{EVI}, \code{NDVI}, \code{NBR}).
#'
#' @usage data("samples_deforestation")
#'
NULL
