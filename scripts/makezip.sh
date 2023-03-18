#!/bin/bash

if [ $USE_ANYKERNEL3 == "true" ]; then
  echo "ok"
else 
  zip kernel.zip arch/$ARCH/boot/Image
fi
