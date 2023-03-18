#!/bin/bash env

T_GCC="https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9"

if [ $BUILDER == "gcc" ]; then
  git clone --depth=1 T_GCC /opt/gcc
fi

