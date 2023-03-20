#!/bin/bash env

if [ $BUILDER == "gcc" ]; then
  export CROSS_COMPILE=/opt/gcc/bin/aarch64-linux-android-
  make -j$(nproc --all)
elif [ $BUILDER == "clang" ]; then
  export CC=/tmp/clang/bin/clang
  export CROSS_COMPILE=/opt/gcc/bin/aarch64-linux-android-
  make -j$(nproc --all)
fi
