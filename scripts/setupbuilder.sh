#!/bin/bash env

GCC_LINK="https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9"

if [[ "$BUILDER" == "gcc"  ]]; then
    git clone --depth=1 $GCC_LINK /opt/gcc
fi
