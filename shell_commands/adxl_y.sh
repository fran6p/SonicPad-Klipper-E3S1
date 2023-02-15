#!/bin/sh
#
# Create PNG from csv file issued after INPUT_SHAPING, Y axis
#

# Paths
# Creality use OpenWRT as OS so the shell is from busybox: ash
#
DATE=$(date +"%Y%m%d")
SCRIPTS="/usr/share/klipper/scripts/calibrate_shaper.py"
CSV_FILE="/tmp/calibration_data_y_*.csv"
PNG_FILE="/mnt/UDISK/printer_config/shaper_calibrate_y_$DATE.png"

echo "Paths :"
echo "-------"
echo .
echo $DATE
echo $SCRIPTS
echo $CSV_FILE
echo $PNG_FILE
echo .

$SCRIPTS $CSV_FILE -o $PNG_FILE