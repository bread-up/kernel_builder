#!/bin/bash

cd ..
WORK=$(pwd)
cd work

pack_kernel () {
   mkdir /tmp/out
   mv arch/$ARCH/boot/$IMAGE_NAME /tmp/out
   if [ $INCLUDE_KO == true ]; then
     mv lib/modules /tmp/out
     cd /tmp/out
     7z -y a kernel.zip *
   else
     cd /tmp/out
     7z -y a kernel.zip *
   fi
   mv kernel.zip $WORK
}

if [ $USE_ANYKERNEL3 == "true" ]; then
  AK=true
else
  pack_kernel
fi
