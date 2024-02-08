Data sets for the e-sensing project.
================

<img src="inst/extdata/sticker/sits_sticker.png" alt="SITS icon" align="right" height="150" width="150"/>

This project contains in situ data sets used in the e-sensing project. These data sets consists of time series of selected locations which are used to train machine learning models, csv files containing training locations, and data cubes to run examples of sits usage.

To load these data sets:

`devtools::install_github("e-sensing/sitsdata")`

## Time series samples for classification using machine learning

### Data availability 

R package `sitsdata` contains  time series to be used for classification with machine learning methods which are available when the package is loaded using `library(sitsdata)`. All satellite image time series have the following columns: 

- longitude (East-west coordinate of the time series sample in WGS 84).
- latitude (North-south coordinate of the time series sample in WGS 84).
- start_date (initial date of the time series).
- end_date (final date of the time series).
- label (the class label associated to the sample).
- cube (the name of the image data cube associated with the data).
- time_series (list  with the values of the time series).

### LULC for Cerrado Biome using MODIS

A dataset containing 50,160 time series samples from Brazilian Cerrado biome, with 12 classes ("Dense_Woodland", "Dunes", "Fallow_Cotton", "Millet_Cotton", "Pasture", "Rocky_Savanna", "Savanna", "Savanna_Parkland", "Silviculture",  "Soy_Corn", "Soy_Cotton", "Soy_Fallow"). Each time series covers 12 months (23 data points) from MOD13Q1 product, and has 4 bands (`EVI`, `NDVI`, `MIR`, and `NIR`). 

Reference: Lorena Santos, Karine Ferreira, Gilberto Camara, Michelle Picoli, Rolf Simoes, “Quality control and class noise reduction of satellite image time series”. ISPRS Journal of Photogrammetry and Remote Sensing, vol. 177, pp 75-88, 2021. https://doi.org/10.1016/j.isprsjprs.2021.04.014.

Example: See chapter ["Improving the Quality of Training Samples"](https://e-sensing.github.io/sitsbook/improving-the-quality-of-training-samples.html) in the `sits` [reference book](https://e-sensing.github.io/sitsbook/index.html)

Usage: `data("samples_cerrado_mod13q1")`

License: Creative Commons Attribution 4.0 International (CC BY 4.0).


### Land Use and Land Cover for Mato Grosso (Brazil) using MODIS

A dataset containing 1,892 time series samples from Brazilian Mato Grosso State (Amazon and Cerrado biomes). It has 9 classes ("Cerrado", "Fallow_Cotton", "Forest", "Millet_Cotton", "Pasture", "Soy_Corn", "Soy_Cotton", "Soy_Fallow", "Soy_Millet"). Each time series comprehends 12 months (23 data points) from the MOD13Q1 product, and has 6 bands.

References: 

- Michelle Picoli, Gilberto Camara, et al., “Big Earth Observation Time Series Analysis for Monitoring Brazilian Agriculture”. ISPRS Journal of Photogrammetry and Remote Sensing, 145: 328-339, 2018. DOI: 10.1016/j.isprsjprs.2018.08.007.

- Câmara, Gilberto; Picoli, Michelle, et al., Land cover change maps for Mato Grosso State in Brazil: 2001-2017 (version 3). PANGAEA, 2021. https://doi.org/10.1594/PANGAEA.899706. 

Example: See chapter ["Machine Learning for Data Cubes"](https://e-sensing.github.io/sitsbook/machine-learning-for-data-cubes.html) in the `sits` [reference book](https://e-sensing.github.io/sitsbook/index.html)

Usage: `data("samples_matogrosso_mod13q1")`

License: Creative Commons Attribution 4.0 International (CC BY 4.0).

### Land Use and Land Cover for part of Brazilian Cerrado using CBERS-4 AWFI

A dataset with 922 time series sampled on the Brazilian Cerrado, obtained from a set of CBERS-4 AWFI images over a subset of tile "022024" of cube "CB4_64_16D_STK" of the Brazilian Data Cube. CBERS-4 AWFI is a sensor with 64 meter resolution. Each time series has one year of 16-day composites from AWFI images, comprising 23 data points and 6 bands ("BAND13", "BAND14", "BAND15", "BAND16", "NDVI", "EVI"). 

Reference: Karine Ferreira, Gilberto Queiroz, et al., “Earth Observation Data Cubes for Brazil: Requirements, Methodology and Products”. Remote Sensing, 12, 4033, 2020. https://doi.org/10.3390/rs12244033.

Example: See chapter ["Image Classification in Data Cubes"](https://e-sensing.github.io/sitsbook/image-classification-in-data-cubes.html) in the `sits` [reference book](https://e-sensing.github.io/sitsbook/index.html).

Usage: `data("samples_cerrado_cbers")`.

License: Creative Commons Attribution 4.0 International (CC BY 4.0).

### Deforestation in Rondonia (Brazil) using SENTINEL-2/2A data

A dataset containing a tibble with 480 times series collected over the state of Rondonia (Brasil) for detecting deforestation from the period 2020-06-04 to 2021-08-26. Each time series contains 8 bands ("B02", "B03", "B04", "B08", "B8A", "B11", "B12") and three indices ("NDVI", "EVI", "NBR") and 4 classes ("Burned_Area", "Forest", "Highly_Degraded" and "Cleared_Area").

Example: See chapter ["Uncertainty and active learning"](https://e-sensing.github.io/sitsbook/uncertainty-and-active-learning.html) in the `sits` [reference book](https://e-sensing.github.io/sitsbook/index.html).

Usage: `data("samples_prodes_4classes")`.

License: Creative Commons Attribution 4.0 International (CC BY 4.0).

### Yearly deforestation samples of 9 classes on Amazonia biome from SENTINEL-2/2A images

A dataset containing a tibble with 6007 times series collected over the state of Rondonia (Brasil) for detecting deforestation and degradation from the period 2022-01-05 to 2022-12-23. Each time series contains 3 bands ("B02", "B8A", "B11") and three indices ("NDVI", "EVI", "NBR") and 9 classes ("Clear_Cut_Bare_Soil", "Clear_Cut_Burned_Area", "Clear_Cut_Vegetation", "Forest", "Mountainside_Forest", "Riparian_Forest", "Seasonally_Flooded", "Water", "Wetland").

Usage: `data("samples_deforestation")`.

License: Creative Commons Attribution 4.0 International (CC BY 4.0).

### Land Use and Land Cover for Brazilian Cerrado using Landsat-8 OLI

This dataset was produced by a systematic sampling using a grid of 5km x 5km throughout the Cerrado biome, collecting 85,026 samples. The training data labels were extracted from three sources: the pastureland map of 2018 from Pastagem.org, MapBiomas Collection 5 for  2018, and Brazil's National Mapping Agency IBGE maps for 2016-2018. Out of the 85,026 samples, the authors selected those where there was no disagreement between the labels assigned by the three sources. The resulting set had 48,850 points from which the authors extracted time series using a Landsat-8 data cube for year 2018. The distribution of samples for each class is the following: `Annual Crop` (6887), `Cerradao` (4211), `Cerrado` (21,909), `Natural Non Vegetated` (38), `Pasture` (12,894), `Perennial Crop` (68), `Silviculture` (805), `Sugarcane` (1775), and `Water` (263). 

Reference: Simoes, Rolf, Gilberto Camara, Gilberto Queiroz, Felipe Souza, Pedro R. Andrade, Lorena Santos, Alexandre Carvalho, and Karine Ferreira. 2021. "Satellite Image Time Series Analysis for Big Earth Observation Data" Remote Sensing 13, no. 13: 2428. https://doi.org/10.3390/rs13132428.

Example: See chapter ["Validation and accuracy measurements"](https://e-sensing.github.io/sitsbook/validation-and-accuracy-measurements.html) in the `sits` [reference book](https://e-sensing.github.io/sitsbook/index.html)

Usage:`data("samples_cerrado_lc8")`.

License: Creative Commons Attribution 4.0 International (CC BY 4.0).

### LULC Cerrado classification validation

Note: This dataset was recently updated (2024-02-09). There were 749 duplicated entries in the previous version. We corrected the data by removing all duplicated entries. We apologize for any inconvenience. The following description reflects the current version.

This dataset provides samples used for validation of the Cerrado LULC classification (see above). The authors did a systematic sampling of the Cerrado biome using a 20 x 20 km grid with a total of 4653 points. These samples are independent of the training set used in the classification. They were interpreted by five specialists using high resolution images from the same period of the classification. This resulted in 4537 evaluated samples thus distributed: "Annual Crop" (470), "Cerrado" (2647), "Natural Non Vegetated" (44), "Pasture" (1099), "Perennial Crop" (38), "Silviculture" (93), "Sugarcane" (76), and "Water" (70).

Reference: Simoes, Rolf, Gilberto Camara, Gilberto Queiroz, Felipe Souza, Pedro R. Andrade, Lorena Santos, Alexandre Carvalho, and Karine Ferreira. 2021. "Satellite Image Time Series Analysis for Big Earth Observation Data" Remote Sensing 13, no. 13: 2428. https://doi.org/10.3390/rs13132428.

Example: See chapter ["Validation and accuracy measurements"](https://e-sensing.github.io/sitsbook/validation-and-accuracy-measurements.html) in the `sits` [reference book](https://e-sensing.github.io/sitsbook/index.html)

Usage: `data("samples_validation_cerrado")`.

License: Creative Commons Attribution 4.0 International (CC BY 4.0).


## CSV files with samples of land use and land cover

R package `sitsdata` contains CSV files to be used for extraction of time series from data cubes. All CSV files have the following columns: 

- longitude (East-west coordinate of the time series sample in WGS 84).
- latitude (North-south coordinate of the time series sample in WGS 84).
- start_date (initial date of the time series).
- end_date (final date of the time series).
- label (the class label associated to the sample).

### Mali Crop Type Data for 2019

This dataset produced by the NASA Harvest team includes crop types labels from ground referencing matched with time-series of Sentinel-2 imagery during the growing season.  Crop types include Maize, Millet, Rice and Sorghum. Funding for this dataset is provided by Lutheran World Relief, Bill & Melinda Gates Foundation, and University of Maryland NASA Harvest program.

Data provided by the Radiant Earth MLHub (https://mlhub.earth/data/umd_mali_crop_type).

Reference: Nakalembe, C.L., Ouedraogo, H., Diarra, N., & Kuzimbu, B. (2021). 2019 Mali Crop Type Training Data for Machine Learning (Version 1.0) Radiant MLHub. Access date: 11 August 2022. https://doi.org/10.34911/rdnt.tgz68o

Usage: `read.csv(system.file("extdata/csv/mali_crops.csv", package = "sitsdata"))`.

License: Creative Commons Attribution 4.0 International (CC BY 4.0).

### Rwanda Crop Type Classification Dataset

RTI International (RTI) generated 2,611 labeled point locations representing 19 different land cover types, clustered in 5 distinct agroecological zones within Rwanda. These land cover types were reduced to three crop types (Banana, Maize, and Legume), two additional non-crop land cover types (Forest and Structure), and a catch-all Other land cover type to provide training/evaluation data for a crop classification model.

Data provided by the Radiant Earth MLHub (https://mlhub.earth/data/umd_mali_crop_type).

References:

- Rineer J., Beach R., Lapidus D., O’Neil M., Temple D., Ujeneza N., Cajka J., & Chew R. (2021), “Drone Imagery Classification Training Dataset for Crop Types in Rwanda”, Version 1.0, Radiant MLHub https://doi.org/10.34911/rdnt.r4p1fr.

- Chew, R., Rineer, J., Beach, R., O’Neil, M., Ujeneza, N., Lapidus, D., Miano, T., Hegarty-Craver, M., Polly, J., & Temple, D. S. (2020). Deep neural networks and transfer learning for food crop identification in UAV images. Drones, 4(1), 7. https://doi.org/10.3390/drones4010007

Usage: `read.csv(system.file("extdata/csv/rwanda_crops.csv", package = "sitsdata"))`

License: Creative Commons Attribution 4.0 International (CC BY 4.0).

### Uganda Crop Type Classification Dataset

This dataset contains crop types and field boundaries along with other metadata collected in a campaign run by Dalberg Data Insights in the end of September 2017, as close as possible to the harvest period of 2017. Post ground data collection, Radiant Earth Foundation conducted a quality control of the polygons using Sentinel-2 imagery of the growing season as well as Google basemap imagery, and removed several polygons that overlapped with infrastructure or built-up areas. 

Data provided by the Radiant Earth MLHub (https://mlhub.earth/data/ref_african_crops_uganda_01).

Reference: Bocquet, C., & Dalberg Data Insights. (2019) "Dalberg Data Insights Uganda Crop Classification", Version 1.0, Radiant MLHub. Access date: 12 August 2022. https://doi.org/10.34911/RDNT.EII04X.

Usage: `read.csv(system.file("extdata/csv/uganda_crops.csv", package = "sitsdata"))`

License: Creative Commons Attribution 4.0 International (CC BY 4.0).

## Image Data cubes used for classification examples


### Indices and spectral bands of SENTINEL-2/2A images for the 20LMR tile in Rondonia (Brazil)

This dataset contains 23 TIF files with 3 spectral bands (B02, B8A, and B11) and 3  indices (EVI, NDVI, and NBR) of SENTINEL-2/2A for the period 2022-01-05 to 2022-12-23. These images correspond to tile 20LMR of the MGRS grid. These files with associated timeline are used to test and validate the algorithms in the R package "sits". 

Usage: `system.file("extdata/Rondonia-20LMR", package = "sitsdata")`

License: Creative Commons Attribution 4.0 International (CC BY 4.0).

### EVI and NDVI MOD13Q1 images for Sinop (Brazil)

TIF files containing 23 EVI and NDVI MOD13Q1 images for the period 2013-09-14 to 2014-08-29, covering the agricultural year in the city of Sinop (Mato Grosso). These files with associated timeline are used to test and validate the algorithms in the R package "sits". 

Example: See chapter ["Introduction to SITS"](https://e-sensing.github.io/sitsbook/introduction-to-sits.html) in the `sits` [reference book](https://e-sensing.github.io/sitsbook/index.html)

Usage: `system.file("extdata/sinop", package = "sitsdata")`

License: Creative Commons Attribution 4.0 International (CC BY 4.0).

### EVI and NDVI CBERS-4 AWFI images for Brazilian Cerrado

TIF files containing 23 EVI and NDVI CBERS-4 AWFI images for the period 2018-08-29 to 2019-08-13, covering the agricultural year in the Brazilian Cerrado near the city of Barreiras (Bahia). These files with associated timeline are used to test and validate the algorithms in the R package "sits". 

Reference: Karine Ferreira, Gilberto Queiroz, et al., “Earth Observation Data Cubes for Brazil: Requirements, Methodology and Products”. Remote Sensing, 12, 4033, 2020. https://doi.org/10.3390/rs12244033.

Example: See chapter ["Image Classification in Data Cubes"](https://e-sensing.github.io/sitsbook/image-classification-in-data-cubes.html) in the `sits` [reference book](https://e-sensing.github.io/sitsbook/index.html).

Usage: `system.file("extdata/CBERS", package = "sitsdata")`

License: Creative Commons Attribution 4.0 International (CC BY 4.0).

### LULC classification using Landsat-8 for the Brazilian Cerrado

A data cube containing classified images of a Landsat-8 data cube for the Brazilian Cerrado biome, as described in the paper by Simoes et al. (2021).  

Reference: Simoes, Rolf, Gilberto Camara, Gilberto Queiroz, Felipe Souza, Pedro R. Andrade, Lorena Santos, Alexandre Carvalho, and Karine Ferreira. 2021. "Satellite Image Time Series Analysis for Big Earth Observation Data" Remote Sensing 13, no. 13: 2428. https://doi.org/10.3390/rs13132428.

Example: See chapter ["Validation and accuracy measurements"](https://e-sensing.github.io/sitsbook/validation-and-accuracy-measurements.html) in the `sits` [reference book](https://e-sensing.github.io/sitsbook/index.html)

Usage: `system.file("extdata/Cerrado", package = "sitsdata")`

License: Creative Commons Attribution 4.0 International (CC BY 4.0).




