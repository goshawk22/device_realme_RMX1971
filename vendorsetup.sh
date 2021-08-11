if ! [ -d prebuilts/clang/host/linux-x86/clang-proton ]; then git clone https://github.com/kdrag0n/proton-clang.git --depth=1 prebuilts/clang/host/linux-x86/clang-proton; fi

if ! [ -d device/realme/sdm710-common ]; then git clone https://github.com/goshawk22/android_device_realme_sdm710-common -b e device/realme/sdm710-common; fi
if ! [ -d kernel/realme/RMX1971 ]; then git clone https://github.com/goshawk22/kernel_realme_RMX1971 -b 11 kernel/realme/RMX1971; fi
if ! [ -d vendor/realme/sdm710-common ]; then git clone https://gitlab.com/MadhavSaladi/vendor_realme_sdm710-common vendor/realme/sdm710-common; fi
if ! [ -d vendor/realme/RMX1971 ]; then git clone https://gitlab.com/MadhavSaladi/vendor_realme_RMX1971 vendor/realme/RMX1971; fi
