#!/bin/bash

if [ $USE_ANYKERNEL3 == "true" ]; then
  echo "ok"
else 
  7z -y kernel.zip ./arch/$ARCH/boot/Image
fi
