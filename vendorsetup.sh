rm -rf hardware/qcom/audio/adsprpcd
rm -rf hardware/qcom-caf/sdm845/audio
rm -rf hardware/qcom-caf/sdm845/media
rm -rf hardware/qcom-caf/sdm845/display

git clone https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-18.1-caf-sdm845 hardware/qcom-caf/sdm845/audio
git clone https://github.com/LineageOS/android_hardware_qcom_media -b lineage-18.1-caf-sdm845 hardware/qcom-caf/sdm845/media
git clone https://github.com/goshawk22/hardware_qcom_display -b octavi-caf-sdm845 hardware/qcom-caf/sdm845/display

git clone https://github.com/kdrag0n/proton-clang.git --depth=1 prebuilts/clang/host/linux-x86/clang-proton

git clone github.com/goshawk22/android_device_realme_sdm710-common -b octavi-11 device/realme/sdm710-common
git clone https://github.com/goshawk22/kernel_realme_RMX1971 -b 11 kernel/realme/RMX1971
git clone https://gitlab.com/MadhavSaladi/vendor_realme_sdm710-common vendor/realme/sdm710-common
git clone https://gitlab.com/MadhavSaladi/vendor_realme_RMX1971 vendor/realme/RMX1971


