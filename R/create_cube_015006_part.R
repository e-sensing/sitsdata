library(sits)

data_dir <- "/Volumes/KINGSTON/sitsfm/scenario_3/cerrado_emb_lejepa_tcnn_2024/"

lejepa_2024_cube <- sits_cube(
    source = "BDC",
    collection = "LANDSAT-OLI-16D",
    data_dir = data_dir,
    tiles = "015009",
    multicores = 6
)

roi <- c(lat_min = -11.82, lat_max = -11.57, lon_min = -45.75, lon_max = -45.50)
lejepa_2024_part <- sits_cube_copy(
    cube = lejepa_2024_cube,
    roi = roi,
    output_dir = "~/sitsdata/inst/extdata/Bahia-LeJEPA",
    multicores = 6
)
