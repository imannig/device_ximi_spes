# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp

echo 'Starting to clone stuffs needed for your device'

echo 'Cloning vendor'
git clone --depth=1 https://github.com/smokey18/vendor_xiaomi_spes -b 13 vendor/xiaomi/spes

echo 'Cloning kernel'
git clone --depth=1 https://github.com/Jabiyeff/kernel_xiaomi_spes_header kernel/xiaomi/spes

echo 'Cloning hardware/xiaomi'
git clone https://github.com/Project-Elixir/hardware_xiaomi -b Tiramisu hardware/xiaomi

echo 'Finished cloning, You can start the build now...'
