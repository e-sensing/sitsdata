library(sits)

data_dir <- "data"

rds_files <- list.files(data_dir, pattern = "\\.rds$", full.names = TRUE)

for (rds in rds_files) {
  data <- readRDS(rds)
  parquet <- sub("\\.rds$", ".parquet", rds)
  sits_to_parquet(data, parquet)
  message(sprintf("Converted %s -> %s", basename(rds), basename(parquet)))
}

message(sprintf("Converted %d files.", length(rds_files)))
