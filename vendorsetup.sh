function clonedevice {
    git clone https://github.com/kdrag0n/proton-clang.git --depth=1 prebuilts/clang/host/linux-x86/clang-proton

    git clone https://github.com/goshawk22/android_device_realme_sdm710-common -b eleven-cafex device/realme/sdm710-common
    git clone https://github.com/goshawk22/kernel_realme_RMX1971 -b 11 kernel/realme/RMX1971
    git clone https://gitlab.com/goshawk22/android_vendor_realme_sdm710-common -b eleven-cafex vendor/realme/sdm710-common
    git clone https://gitlab.com/goshawk22/android_vendor_realme_rmx1971 -b eleven-cafex vendor/realme/RMX1971
}

function clonehals {
    rm -rf vendor/qcom/opensource/interfaces
    git clone https://github.com/goshawk22/android_vendor_qcom-opensource_interfaces vendor/qcom/opensource/interfaces

    rm -rf hardware/qcom/display
    rm -rf hardware/qcom/media
    rm -rf vendor/qcom/opensource/audio-hal/primary-hal

    git clone https://github.com/AOSPA/android_hardware_qcom_audio -b ruby-845 vendor/qcom/opensource/audio-hal/primary-hal
    git clone https://github.com/AOSPA/android_hardware_qcom_media -b ruby-845 hardware/qcom/media
    git clone https://github.com/AOSPA/android_hardware_qcom_display -b ruby-845 hardware/qcom/display
}

echo "Clone Device? [Y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
	echo "Cloning!"
        clonedevice
else
        echo "Not cloning!"
fi

echo "Clone HALs etc? [Y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "Cloning!"
        clonehals
else
        echo "Not cloning!"
fi


