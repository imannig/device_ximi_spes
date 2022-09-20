# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Clone trees
git clone https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_xiaomi_spes -b thirteen vendor/xiaomi/spes
git clone https://github.com/PixelPlusUI-Devices/android_kernel_xiaomi_spes-header --depth=1 kernel/xiaomi/spes
git clone https://github.com/PixelExperience-Devices/device_qcom_common -b thirteen device/qcom/common
git clone https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_qcom_common -b thirteen vendor/qcom/common
