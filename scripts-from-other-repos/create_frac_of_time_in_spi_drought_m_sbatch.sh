# create a sub script for analysing frac of time in each drought category for raw simulations SPI
~/bash_utils/make-sbatch-sub.sh 1,4-13,15 1 frac_of_time_in_spi_drought_raw_m
printf "python3 /gpfs/home/hmj19qmu/phd_code/HydroloPy/py-scripts/drought_indices/frac_of_time_sdi_category.py \\
--si-path /gpfs/home/hmj19qmu/phd_code/HydroloPy/data_outputs/SPI/spi_rcp85_land-rcm_uk_12km_\${SLURM_ARRAY_TASK_ID_sf}_day_19810101-20801230_raw_b6110_gamma_m.nc \\
--outdir /gpfs/home/hmj19qmu/phd_code/HydroloPy/data_outputs/SPI/derived-results/ \\
--out-tail spi_rcp85_land-rcm_uk_12km_\${SLURM_ARRAY_TASK_ID_sf}_raw_b6110_m.nc \\
--si spi \\
--nmonths 1 3 6 12 24 36" >> frac_of_time_in_spi_drought_raw_m.sub

# create a sub script for analysing frac of time in each drought category for raw simulations SPI
~/bash_utils/make-sbatch-sub.sh -1 1 frac_of_time_in_spi_drought_obs_m
printf "python3 /gpfs/home/hmj19qmu/phd_code/HydroloPy/py-scripts/drought_indices/frac_of_time_sdi_category.py \\
--si-path /gpfs/home/hmj19qmu/phd_code/HydroloPy/data_outputs/SPI/spi_hadukgrid_uk_12km_day_19610101-20171231_b6110_gamma_m.nc \\
--outdir /gpfs/home/hmj19qmu/phd_code/HydroloPy/data_outputs/SPI/derived-results/ \\
--out-tail spi_hadukgrid_uk_12km_day_19610101-20171231_b6110_gamma_m.nc \\
--si spi \\
--calendar greg \\
--nmonths 1 3 6 12 24 36" >> frac_of_time_in_spi_drought_obs_m.sub
