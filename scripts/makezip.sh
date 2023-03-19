#!/bin/bash

pack_kernel () {
   mkdir ../out
   mv arch/$ARCH/boot/$IMAGE_NAME ../out
   if [ $INCLUDE_KO == true ]; then
     mv lib/modules ../out
   fi
   cd ../out
   7z -y a kernel.zip *
   mv kernel.zip ..
}

if [ $USE_ANYKERNEL3 == "true" ]; then
  AK=true
else
  pack_kernel
fi
