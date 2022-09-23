# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp
rm -rf hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi
rm -rf hardware/xiaomi/megvii
git clone https://github.com/imannig/vendor_xiaomi_spes -b tiramisu vendor/xiaomi/spes
git clone https://github.com/Jabiyeff/kernel_xiaomi_spes_header --depth=1 kernel/xiaomi/spes
