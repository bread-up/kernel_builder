#!/bin/bash env

T_GCC="https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9"
T_CLANG="https://github.com/pkm774/android-kernel-tools"

if [ $BUILDER == "gcc" ]; then
  git clone --depth=1 $T_GCC /opt/gcc
elif [ $BUILDER == "clang" ]; then
    if [ -z ${USE_CUSTOM_CLANG+x} ]; then
      git clone --depth=1 $T_GCC /opt/gcc
      git clone --depth=1 $T_CLANG /tmp/clang
      mkdir /opt/clang
      mv /tmp/clang/clang/host/linux-x86/clan*/* /opt/clang
    else
      if [ $USE_CUSTOM_CLANG == "true" ]; then
        git clone --depth=1 $CLANG_SOURCE -b $CLANG_SOURCE_BRANCH /opt/clang
      fi
    fi
fi
