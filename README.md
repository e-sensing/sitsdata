Data sets for the e-sensing project
================

<img src="inst/extdata/sticker/sits_sticker.png" alt="SITS icon" align="right" height="150" width="150"/>

This project contains in situ data sets used in the e-sensing project.
These data sets consist of time series from selected locations, which
are used to train machine learning models, and data cubes to run
examples of sits usage.

To load these datasets, first, install the `sitsdata` package using
[devtools](https://devtools.r-lib.org/):

``` r
devtools::install_github("e-sensing/sitsdata")
```

Next, load it:

    library(sitsdata)

In the next sections are examples of how you can use the datasets
available.

> In case of any issue in following the steps above, please check the
> [installation tip](#installation-tips) section.

## Data format

The `sitsdata` R package contains time-series to be used for
classification with machine learning methods which are available when
the package is loaded using `library(sitsdata)`. All satellite image
time-series have the following columns:

- `longitude` (East-west coordinate of the time series sample in WGS
  84).
- `latitude` (North-south coordinate of the time series sample in WGS
  84).
- `start_date` (initial date of the time series).
- `end_date` (final date of the time series).
- `label` (the class label associated to the sample).
- `cube` (the name of the image data cube associated with the data).
- `time_series` (list with the values of the time series).

## Datasets available

In the sections below is the metadata of each dataset available in the
`sitsdata` package.

### Land Use and Land Cover in Cerrado Biome using MODIS

The following table presents the metadata of this dataset:

| **Attribute** | **Details** |
|----|----|
| **Dataset ID** | `samples_cerrado_mod13q1` |
| **Region** | Cerrado Biome (Brazil) |
| **Number of Time Series** | `50160` |
| **Satellite** | Terra |
| **Satellite-Sensor** | `MODIS` |
| **Product** | MOD13Q1 |
| **Data Source** | NASA |
| **Spatial Resolution** | 250 meters |
| **Time Extent** | `2000-08-28` to `2019-09-01` |
| **Temporal Resolution** | `16-day composite` (23 data points per year) |
| **Spectral Bands** | `MIR`, `NIR` |
| **Spectral Indices** | `EVI`,`NDVI` |
| **Land Cover Classes** | `Dense_Woodland`, `Dunes`, `Fallow_Cotton`, `Millet_Cotton`, `Pasture`, `Rocky_Savanna`, `Savanna`, `Savanna_Parkland`, `Silviculture`, `Soy_Corn`, `Soy_Cotton`, `Soy_Fallow` |
| **Reference** | Lorena Santos, Karine Ferreira, Gilberto Camara, Michelle Picoli, Rolf Simoes, *“Controle de qualidade e redução de ruído de classe de séries temporais de imagens de satélite”*. ISPRS Journal of Photogrammetry and Remote Sensing, vol. 177, pp 75-88, 2021. [Access Link](https://doi.org/10.1016/j.isprsjprs.2021.04.014) |
| **License** | <img style="display: inline-block; vertical-align: middle; margin-right: 5px;" src="./inst/extdata/licenses/by.png" alt="CC BY Icon" width="70">[Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/) |

To use this dataset, you can use the following command:

``` r
library(sits)
library(sitsdata)

data("samples_cerrado_mod13q1")
```

By using the command above, the dataset will be available in the
`samples_cerrado_mod13q1` variable.

<details>
<summary>
Click to learn how to view the data
</summary>

If you want to view the dataset you just loaded, you can use the
[sits](https://github.com/e-sensing/sits) R package:

``` r
plot(samples_cerrado_mod13q1)
```

To view it in am interactive map, use:

``` r
sits_view(samples_cerrado_mod13q1)
```

To learn more, please check the [sits R package
book](https://e-sensing.github.io/sitsbook/index.html).
</details>

### Land Use and Land Cover in Mato Grosso using MODIS

The following table presents the metadata of this dataset:

| **Attribute** | **Details** |
|----|----|
| **Dataset ID** | `samples_matogrosso_mod13q1` |
| **Region** | Mato Grosso State (Brazil) |
| **Number of Time Series** | `1837` |
| **Satellite** | Terra |
| **Satellite-Sensor** | `MODIS` |
| **Product** | MOD13Q1 |
| **Data Source** | NASA |
| **Spatial Resolution** | 250 meters |
| **Time Extent** | `2000-09-13` to `2016-08-28` |
| **Temporal Resolution** | `16-day composite` (23 data points per year) |
| **Spectral Bands** | `MIR`, `NIR` |
| **Spectral Indices** | `EVI`,`NDVI` |
| **Land Cover Classes** | `Cerrado`, `Forest`, `Pasture`, `Soy_Corn`, `Soy_Cotton`, `Soy_Fallow`, `Soy_Millet` |
| **Reference** | Michelle Picoli, Gilberto Camara, et al., *“Big Earth Observation Time Series Analysis for Monitoring Brazilian Agriculturee”*. ISPRS Journal of Photogrammetry and Remote Sensing, 145: 328-339, 2018. [Access Link](https://doi.org/10.1016/j.isprsjprs.2018.08.007)<br>Câmara, Gilberto; Picoli, Michelle, et al., *“Land cover change maps for Mato Grosso State in Brazil: 2001-2017”* (version 3). PANGAEA, 2021. [Access Link](https://doi.org/10.1594/PANGAEA.899706) |
| **License** | <img style="display: inline-block; vertical-align: middle; margin-right: 5px;" src="./inst/extdata/licenses/by.png" alt="CC BY Icon" width="70">[Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/) |

To use this dataset, you can use the following command:

``` r
library(sits)
library(sitsdata)

data("samples_matogrosso_mod13q1")
```

By using the command above, the dataset will be available in the
`samples_matogrosso_mod13q1` variable.

<details>
<summary>
Click to learn how to view the data
</summary>

If you want to view the dataset you just loaded, you can use the
[sits](https://github.com/e-sensing/sits) R package:

``` r
plot(samples_matogrosso_mod13q1)
```

To view it in am interactive map, use:

``` r
sits_view(samples_matogrosso_mod13q1)
```

To learn more, please check the [sits R package
book](https://e-sensing.github.io/sitsbook/index.html).
</details>

### Land Use and Land Cover in a portion of the Cerrado Using CBERS-4 AWFI

The following table presents the metadata of this dataset:

| **Attribute** | **Details** |
|----|----|
| **Dataset ID** | `samples_cerrado_cbers` |
| **Region** | Cerrado (Brazil) |
| **Number of Time Series** | `922` |
| **Satellite** | CBERS-4 |
| **Satellite-Sensor** | `MUX` |
| **Product** | CB4_64_16D_STK |
| **Data Source** | BDC |
| **Spatial Resolution** | 64 meters |
| **Time Extent** | `2018-08-29` to `2019-08-13` |
| **Temporal Resolution** | `16-day composite` (23 data points per year) |
| **Spectral Bands** | `BAND13`, `BAND14`, `BAND15`, `BAND16` |
| **Spectral Indices** | `EVI`,`NDVI` |
| **Land Cover Classes** | `Cerradao`, `Cerrado`, `Cropland`, `Pasture` |
| **Reference** | Karine Ferreira, Gilberto Queiroz, et al., *“Earth Observation Data Cubes for Brazil: Requirements, Methodology and Products”*. Remote Sensing, 12, 4033, 2020. [Access Link](https://doi.org/10.3390/rs12244033) |
| **License** | <img style="display: inline-block; vertical-align: middle; margin-right: 5px;" src="./inst/extdata/licenses/by.png" alt="CC BY Icon" width="70">[Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/) |

To use this dataset, you can use the following command:

``` r
library(sits)
library(sitsdata)

data("samples_cerrado_cbers")
```

By using the command above, the dataset will be available in the
`samples_cerrado_cbers` variable.

<details>
<summary>
Click to learn how to view the data
</summary>

If you want to view the dataset you just loaded, you can use the
[sits](https://github.com/e-sensing/sits) R package:

``` r
plot(samples_cerrado_cbers)
```

To view it in am interactive map, use:

``` r
sits_view(samples_cerrado_cbers)
```

To learn more, please check the [sits R package
book](https://e-sensing.github.io/sitsbook/index.html).
</details>

### Deforestation in Rondonia using Sentinel-2A

The following table presents the metadata of this dataset:

| **Attribute** | **Details** |
|----|----|
| **Dataset ID** | `samples_prodes_4classes` |
| **Region** | Rondonia (Brazil) |
| **Number of Time Series** | `393` |
| **Satellite** | Sentinel-2 |
| **Satellite-Sensor** | `MSI` |
| **Product** | SENTINEL-2-L2A |
| **Data Source** | BDC |
| **Spatial Resolution** | 10 meters |
| **Time Extent** | `2020-06-04` to `2021-08-26` |
| **Temporal Resolution** | `16-day composite` (29 data points per year) |
| **Spectral Bands** | `B02`, `B03`, `B04`, `B08`, `B8A`, `B11`, `B12` |
| **Spectral Indices** | `NDVI`, `EVI`, `NBR` |
| **Land Cover Classes** | `Burned_Area`, `Cleared_Area`, `Forest`, `Highly_Degraded` |
| **Reference** | *SITS* [Access Link](https://e-sensing.github.io/sitsbook/index.html) |
| **License** | <img style="display: inline-block; vertical-align: middle; margin-right: 5px;" src="./inst/extdata/licenses/by.png" alt="CC BY Icon" width="70">[Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/) |

To use this dataset, you can use the following command:

``` r
library(sits)
library(sitsdata)

data("samples_prodes_4classes")
```

By using the command above, the dataset will be available in the
`samples_prodes_4classes` variable.

<details>
<summary>
Click to learn how to view the data
</summary>

If you want to view the dataset you just loaded, you can use the
[sits](https://github.com/e-sensing/sits) R package:

``` r
plot(samples_prodes_4classes)
```

To view it in am interactive map, use:

``` r
sits_view(samples_prodes_4classes)
```

To learn more, please check the [sits R package
book](https://e-sensing.github.io/sitsbook/index.html).
</details>

### Yearly deforestation samples in the Amazon Biome using Sentinel-2/2A

The following table presents the metadata of this dataset:

| **Attribute** | **Details** |
|----|----|
| **Dataset ID** | `samples_deforestation` |
| **Region** | Amazon Biome (Brazil) |
| **Number of Time Series** | `6007` |
| **Satellite** | Sentinel-2 |
| **Satellite-Sensor** | `MSI` |
| **Product** | SENTINEL-2-L2A |
| **Data Source** | BDC |
| **Spatial Resolution** | 10 meters |
| **Time Extent** | `2022-01-05` to `2022-12-23` |
| **Temporal Resolution** | `16-day composite` (23 data points per year) |
| **Spectral Bands** | `B02`, `B8A`, `B11` |
| **Spectral Indices** | `NDVI`, `EVI`, `NBR` |
| **Land Cover Classes** | `Clear_Cut_Bare_Soil`, `Clear_Cut_Burned_Area`, `Clear_Cut_Vegetation`, `Forest`, `Mountainside_Forest`, `Riparian_Forest`, `Seasonally_Flooded`, `Water`, `Wetland` |
| **Reference** | *SITS* [Access Link](https://e-sensing.github.io/sitsbook/index.html) |
| **License** | <img style="display: inline-block; vertical-align: middle; margin-right: 5px;" src="./inst/extdata/licenses/by.png" alt="CC BY Icon" width="70">[Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/) |

To use this dataset, you can use the following command:

``` r
library(sits)
library(sitsdata)

data("samples_deforestation")
```

By using the command above, the dataset will be available in the
`samples_deforestation` variable.

<details>
<summary>
Click to learn how to view the data
</summary>

If you want to view the dataset you just loaded, you can use the
[sits](https://github.com/e-sensing/sits) R package:

``` r
plot(samples_deforestation)
```

To view it in am interactive map, use:

``` r
sits_view(samples_deforestation)
```

To learn more, please check the [sits R package
book](https://e-sensing.github.io/sitsbook/index.html).
</details>

## Image Data cubes used for classification examples

### Indices and spectral bands from SENTINEL-2/2A images for tile 20LMR in Rondonia

The following table presents the metadata of this dataset:

| **Attribute** | **Details** |
|----|----|
| **Dataset ID** | `Rondonia-20LMR` |
| **Region** | Rondonia (Brazil) |
| **Number of Images** | `23 TIF files` |
| **Satellite** | Sentinel-2 |
| **Satellite-Sensor** | `MSI` |
| **Spatial Resolution** | 10 meters |
| **Time Extent** | `2022-01-05` to `2022-12-23` |
| **Tile** | `20LMR` (MGRS grid) |
| **Temporal Resolution** | `16-day composite` |
| **Spectral Bands** | `B02`, `B8A`, `B11` |
| **Spectral Indices** | `NDVI`, `EVI`, `NBR` |
| **Reference** | *SITS* [Access Link](https://e-sensing.github.io/sitsbook/index.html) |
| **License** | <img style="display: inline-block; vertical-align: middle; margin-right: 5px;" src="./inst/extdata/licenses/by.png" alt="CC BY Icon" width="70">[Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/) |

To use this dataset, you can use the following command:

``` r
library(sits)
library(sitsdata)

data_dir <- system.file("extdata/Rondonia-20LMR", package = "sitsdata")
```

By using the command above, the path to the `Rondonia-20LMR` dataset
will be stored in the data_dir variable.

To learn more, please check the [sits R package
book](https://e-sensing.github.io/sitsbook/index.html).
</details>

### EVI and NDVI MOD13Q1 images for Sinop

The following table presents the metadata of this dataset:

| **Attribute** | **Details** |
|----|----|
| **Dataset ID** | `sinop` |
| **Region** | Sinop (Brazil) |
| **Number of Images** | `23 TIF files` |
| **Satellite** | Terra |
| **Satellite-Sensor** | `MODIS` |
| **Spatial Resolution** | 250 meters |
| **Time Extent** | `2013-09-14` to `2014-08-29` |
| **Tile** | `012010` |
| **Temporal Resolution** | `16-day composite` |
| **Spectral Indices** | `NDVI`, `EVI` |
| **Reference** | *SITS* [Access Link](https://e-sensing.github.io/sitsbook/index.html) |
| **License** | <img style="display: inline-block; vertical-align: middle; margin-right: 5px;" src="./inst/extdata/licenses/by.png" alt="CC BY Icon" width="70">[Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/) |

To use this dataset, you can use the following command:

``` r
library(sits)
library(sitsdata)

data_dir <- system.file("extdata/sinop", package = "sitsdata")
```

By using the command above, the path to the `sinop` dataset will be
stored in the data_dir variable.

To learn more, please check the [sits R package
book](https://e-sensing.github.io/sitsbook/index.html).
</details>

## Installation tips

If you are having network issues installing the `sitsdata` package,
please consider increasing the timeout limit:

``` r
options(timeout = 300) # Set timeout to 5 minutes
```

After updating the timeout limit, you can install the package using the
[devtools](https://devtools.r-lib.org/) command:

    devtools::install_github("e-sensing/sitsdata")

If you have any other issues, please ask for help in the [issue
section](https://github.com/e-sensing/sitsdata); we are keen to support
you!
