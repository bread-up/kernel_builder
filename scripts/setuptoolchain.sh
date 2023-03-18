#!/bin/bash env

T_GCC="https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9"
T_CLANG="https://github.com/pkm774/android-kernel-tools"

if [ $BUILDER == "gcc" ]; then
  git clone --depth=1 $T_GCC /opt/gcc
elif [ $BUILDER == "clang" ]; then
  git clone --depth=1 $T_CLANG /tmp/clang
  if [ $SDCLANG == "true" ]; then
    mv /tmp/clang/clang/host/linux-x86/clan* /opt/clang
  else
    mv /tmp/clang/sdclang/linux-x86_64 /opt/clang
  fi
else
   echo "only gcc and clang are supported"
fi
