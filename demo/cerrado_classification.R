library(sits)

# CHECK for BDC_ACCESS_TOKEN environment variable
Sys.setenv(BDC_ACCESS_KEY = "YOU_NEED_AN_BDC_ACCESS_TOKEN")

lc8_cerrado_cube <- sits_cube(
        source     = "BDC",
        name       = "cerrado",
        collection = "LC8_30_16D_STK-1",
        tiles      = c("040048", "040049", "040050", "040053",
                       "041048", "041049", "041050", "041051",
                       "041052", "041053", "041054", "042047",
                       "042048", "042049", "042050", "042051",
                       "042052", "042053", "043045", "043046",
                       "043047", "043048", "043049", "043050",
                       "043051", "043052", "043053", "043054",
                       "044044", "044045", "044046", "044047",
                       "044048", "044049", "044050", "044051",
                       "044052", "044053", "045043", "045044",
                       "045045", "045046", "045047", "045048",
                       "045049", "045050", "045051", "045052",
                       "046043", "046044", "046045"),
        start_date = "2017-09-01",
        end_date   = "2018-08-31"
)

# load samples with time series
# creates a new variable: samples_cerrado_lc8
data("samples_cerrado_lc8", package = "sitsdata")

# shows a summary of the training samples
sits_labels_summary(samples_cerrado_lc8)

# train a classification model using TempCNN algorithm
# see ?sits_TempCNN for more information
cnn_model <- sits_train(
        data      = samples_cerrado_lc8, 
        ml_method = sits_TempCNN()
)

# classify the data cube
# the performance depends on memory parameter, 
# number of cores, and data access speed
# processing time estimates
# * 2-cores, 8GB RAM, medium network speed: ~290min/tile
# * 24-cores, 120GB RAM, medium network speed: ~21min/tile
# see ?sits_classify for more details
probs <- sits_classify(
        data     = lc8_cerrado_cube,
        ml_model = cnn_model,
)

# compute Bayesian smoothing
# the performance depends on memory parameter, 
# number of cores, and data access speed
# see ?sits_smooth for more details
probs_smoothed <- sits_smooth(
        cube = probs,
        type = "bayes"
)

# generate thematic map
# the performance depends on memory parameter, 
# number of cores, and data access speed
# see ?sits_label_classification for more details
cerrado_map <- sits_label_classification(
        cube = probs_smoothed
)
