#!/bin/bash

pack_kernel () {
   if [ $USE_ANYKERNEL == "true" ]; then
     mv arch/$ARCH/boot/$IMAGE_NAME ../AnyKernel3
     if [ $INCLUDE_KO == "true" ]; then
       mv lib/modules ../AnyKernel3/modules/system/lib/modules
     fi
     cd ../AnyKernel3
   else
     mkdir ../out
     mv arch/$ARCH/boot/$IMAGE_NAME ../out
     if [ $INCLUDE_KO == "true" ]; then
       mv lib/modules ../out
     fi
     cd ../out
   fi
   zip -r kernel.zip *
   mv kernel.zip ..
}

pack_kernel
