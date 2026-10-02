# Demo on using Sentinel-2 data for measuring deforestation in Amazonia
# using the Brazil Data Cube

# load the sits and sitsdata libraries
library(sits)
library(sitsdata)

# create a data cube covering an area in Rondonia, Brazil
rondonia_s2 <- sits_cube(
        source = "BDC",
        collection = "S2_10_16D_STK-1",
        tiles = "077095",
        start_date = "2018-07-12",
        end_date = "2019-07-28"
)

# recover a set of time series based on a CSV file
# three bands: NDVI, EVI and the CLOUD band
# note the multicores parameters is equal to the number of bands
samples_rondonia_s2 <- sits_get_data(
        cube = rondonia_s2,
        file = system.file("extdata/csv/samples_amazonia_sentinel2.csv",
                           package = "sitsdata"),
        bands = c("NDVI", "EVI", "CLOUD"),
        multicores = 3
)
# train a random forest model
rfor_model <- sits_train(samples_rondonia_s2, ml_method = sits_rfor())

# select a region of interest of 2000 x 2000 pixels
roi_rondonia <- c(xmin = 3810000, ymin = 10160000, xmax = 3820000, ymax = 10170000)

# obtain a probability cube by classification 
rondonia_probs <- sits_classify(
        data = rondonia_s2,
        ml_model = rfor_model,
        roi = roi_rondonia,
        memsize = 16,
        multicores = 4,
        output_dir = "/users/gilbertocamara/sentinel/BDC",
        progress = TRUE,
        verbose = TRUE
)
# smoothen the probability cube
rondonia_bayes <- sits_smooth(
        cube = rondonia_probs,
        memsize = 4,
        multicores = 4
)
# label the cube 
rondonia_class <- sits_label_classification(
        cube = rondonia_bayes,
        memsize = 4,
        multicores = 4
)