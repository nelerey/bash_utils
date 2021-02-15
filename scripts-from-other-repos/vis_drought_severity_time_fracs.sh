# conda activate default-env should have been run already

python3 /Users/nelereyniers/phd_code/HydroloPy/py-scripts/drought_indices/vis_drought_severity_time_fracs.py \
--mvx-paths-format "/Users/nelereyniers/phd_code/HydroloPy/data_outputs/SPI/derived-results/{}d-pct_spi_rcp85_land-rcm_uk_12km_??_BCI3_b6110_m.nc" \
--si spi --nmonths 1 3 6 12 36 --figdir /Users/nelereyniers/phd_code/HydroloPy/figures/SPI/ --universe BCi3 --allem-allperiods-1agg -v

python3 /Users/nelereyniers/phd_code/HydroloPy/py-scripts/drought_indices/vis_drought_severity_time_fracs.py \
--mvx-paths-format "/Users/nelereyniers/phd_code/HydroloPy/data_outputs/SPI/derived-results/{}d-pct_spi_rcp85_land-rcm_uk_12km_??_raw_b6110_m.nc" \
--si spi --nmonths 1 3 6 12 36 --figdir /Users/nelereyniers/phd_code/HydroloPy/figures/SPI/ --universe raw --allem-allperiods-1agg -v

python3 /Users/nelereyniers/phd_code/HydroloPy/py-scripts/drought_indices/vis_drought_severity_time_fracs.py \
--mvx-paths-format "/Users/nelereyniers/phd_code/HydroloPy/data_outputs/SPEI/derived-results/{}d-pct_spei_rcp85_land-rcm_uk_12km_??_BCI3_b6110_mgev.nc" \
--si spei --nmonths 1 3 6 12 36 --figdir /Users/nelereyniers/phd_code/HydroloPy/figures/SPEI/ --universe BCi3 --allem-allperiods-1agg -v

python3 /Users/nelereyniers/phd_code/HydroloPy/py-scripts/drought_indices/vis_drought_severity_time_fracs.py \
--mvx-paths-format "/Users/nelereyniers/phd_code/HydroloPy/data_outputs/SPEI/derived-results/{}d-pct_spei_rcp85_land-rcm_uk_12km_??_raw_b6110_mgev.nc" \
--si spei --nmonths 1 3 6 12 36 --figdir /Users/nelereyniers/phd_code/HydroloPy/figures/SPEI/ --universe raw --allem-allperiods-1agg -v
