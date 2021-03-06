# in-situ data sets
This project contains in situ data sets used in the e-sensing project. These data sets consists of time series of selected locations which are used to train the statistical learning models used in the e-sensing studies. 

To load these data sets:

`devtools::install_github("e-sensing/sitsdata")`

## Description of the "data" directory

#### Data format 

All data sets in the "data" directory are tibbles with satellite image time series, with the following columns: 

- longitude (East-west coordinate of the time series sample in WGS 84),
- latitude (North-south coordinate of the time series sample in WGS 84),
- start_date (initial date of the time series),
- end_date (final date of the time series),
- label (the class label associated to the sample),
- cube (the name of the image data cube associated with the data), and
- time_series ( list containing a tibble with the values of the time series).


#### Cerrado  Land Use and Land Cover Samples: 12 classes, 4 bands, 50,160 time series

A dataset containing a sits tibble with 50 K time series samples from Brazilian Cerrado biome, with 12 classes ("Dense_Woodland", "Dunes", "Fallow_Cotton", "Millet_Cotton", "Pasture", "Rocky_Savanna", "Savanna", "Savanna_Parkland", "Silviculture",  "Soy_Corn", "Soy_Cotton", "Soy_Fallow"). Each time series covers 12 months (23 data points) from MOD13Q1 product, and has 4 bands ("evi", "ndvi", "mir", and "nir").  This data set is used in the paper:

Lorena A. Santos, Karine R. Ferreira, Gilberto Camara, Michelle C.A. Picoli, Rolf E. Simoes, “Quality control and class noise reduction of satellite image time series”. ISPRS Journal of Photogrammetry and Remote Sensing, vol. 177, pp 75-88, 2021. https://doi.org/10.1016/j.isprsjprs.2021.04.014.

Usage: `data("samples_cerrado_mod13q1")`

#### Mato Grosso State (Brazil) Land Use and Land Cover Samples: 9 classes, 6 bands, 1,800 time series

A dataset containing a sits tibble with time series samples from Brazilian Mato Grosso State (Amazon and Cerrado biomes). The samples are from many sources. It has 9 classes ("Cerrado", "Fallow_Cotton", "Forest", "Millet_Cotton", "Pasture", "Soy_Corn", "Soy_Cotton", "Soy_Fallow", "Soy_Millet"). Each time series comprehends 12 months (23 data points) from MOD13Q1 product, and has 6 bands.

Source: Câmara, Gilberto; Picoli, Michelle; Maciel, Adeline; Simoes, Rolf; Santos, Lorena; Andrade, Pedro R; Ferreira, Karine; Begotti, Rodrigo; Sanches, Ieda; Carvalho, Alexandre X Y; Coutinho, Alexandre; Esquerdo, Julio; Antunes, Joao; Arvor, Damien (2019): Land cover change maps for Mato Grosso State in Brazil: 2001-2017 (version 3). PANGAEA, https://doi.org/10.1594/PANGAEA.899706

Usage: `data("samples_matogrosso_mod13q1")`

#### Samples for an area of the Brazilian Cerrado using CBERS-4 AWFI image

A dataset containing a tibble with time series sampled on the Brazilian Cerrado. The time series come from a set of CBERS-4 AWFI images over a subset of tile "022024" of cube "CB4_64_16D_STK" of the Brazilian Data Cube. CBERS-4 AWFI is a sensor with 64 meter resolution. Each time series has one year of 16-day composites from AWFI images, comprising 23 data points and 6 bands (blue, green, red, nir, ndvi, evi)

Usage: `data(cbers_samples_022024)``

#### Samples for an area in Amazonia using SENTINEL-2/2A MSI data

A dataset containing a tibble with time series sampled on the 
Brazilian Amazonia (Rondonia state). The time series come from a set of SENTINEL-2/2A MSI images
over tile "T20LKP" of the standard S2 grid. Each time series comprehends one year of composites of S2 and S2A images, comprising 36 data points and 11 bands and indices (B02, B03, B07, B08, B8A, B11, B12, evi, ndvi, ndmi, savi). This data set should be used in conjunction with the Sentinel-2 images available in the "extdata" directory (see below)

Usage:`data(samples_rondonia_sentinel2)`

## Description of the "extdata" directory
## 
#### Sinop EVI and NDVI images for year 2014

TIF files containing 23 EVI and NDVI MOD13Q1 images for the period 2013-09-14 to 2014-08-29, covering the agricultural year in the city of Sinop (Mato Grosso). These files with associated timeline are used to test and validate the algorithms in the R package "sits". 

Usage: See the demo `classify_raster_rfor` in the `sits` package.

#### Brazilian Cerrado EVI and NDVI images for year 2018

TIF files containing 23 EVI and NDVI CBERS-4 AWFI images for the period 2018-08-29 to 2019-08-13, covering the agricultural year in the Brazilian Cerrado near the city of Barreiras (Bahia). These files with associated timeline are used to test and validate the algorithms in the R package "sits". 

Usage: See the demo `classify_cbers_local` in the `sits` package. 
