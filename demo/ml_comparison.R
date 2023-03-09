devAskNewPage(ask = FALSE)

# load the sits library
library(sits)

# A dataset containing a tibble with time series samples
# for the Mato Grosso state in Brasil.
# The time series come from MOD13Q1 collection 6 images.
# The data set has the following classes:
# Cerrado(379 samples), Forest (131 samples),
# Pasture (344 samples), and Soy_Corn (364 samples).

data("samples_matogrosso_mod13q1")

samples <- samples_matogrosso_mod13q1
# create a list to store the results
results <- list()

## SVM model
print("== Accuracy Assessment = SVM =======================")
acc_svm <- sits_kfold_validate(samples,
                               folds = 5,
                               multicores = 2,
                               ml_method = sits_svm(kernel = "radial", cost = 10)
)
acc_svm$name <- "svm_10"

results[[length(results) + 1]] <- acc_svm

# =============== RFOR ==============================
print("== Accuracy Assessment = RFOR =======================")
acc_rfor <- sits_kfold_validate(samples,
                                folds = 5,
                                multicores = 2,
                                ml_method = sits_rfor(num_trees = 2000)
)
acc_rfor$name <- "rfor"

results[[length(results) + 1]] <- acc_rfor



# =============== XGBOOST ==============================
# extreme gradient boosting
print("== Accuracy Assessment = XGB =======================")
acc_xgb <- sits_kfold_validate(samples,
                               folds = 5,
                               ml_method = sits_xgboost()
)
acc_xgb$name <- "xgboost"

results[[length(results) + 1]] <- acc_xgb


# Deep Learning - MLP

print("== Accuracy Assessment = DL =======================")
acc_dl <- sits_kfold_validate(samples,
                              folds = 5,
                              ml_method = sits_deeplearning(
                                      layers = c(512, 512, 512, 512, 512, 512),
                                      activation = "elu",
                                      dropout_rates = c(0.10, 0.15, 0.20, 0.25, 0.30, 0.35),
                                      epochs = 100,
                                      batch_size = 128,
                                      validation_split = 0.2
                              )
)
acc_dl$name <- "mlp_default"

results[[length(results) + 1]] <- acc_dl

# Deep Learning - TempCNN
print("== Accuracy Assessment = TempCNN =======================")
acc_tc <- sits_kfold_validate(samples,
                              folds = 5,
                              ml_method = sits_TempCNN(verbose = 0)
)
acc_tc$name <- "TempCNN"

results[[length(results) + 1]] <- acc_tc

# Deep Learning - LSTM
print("== Accuracy Assessment = LSTM =======================")
acc_lstm <- sits_kfold_validate(samples,
                                folds = 5, multicores = 2,
                                ml_method = sits_LSTM_FCN(verbose = 0)
)
acc_lstm$name <- "LSTM_FCN"

results[[length(results) + 1]] <- acc_lstm

sits_to_xlsx(results, file = "~/sitsdata/demo/accuracy_mato_grosso_mod13q1.xlsx")
