#!/bin/bash

cd ..
WORK=$(pwd)
cd work

if [ $USE_ANYKERNEL3 == "true" ]; then
  echo "ok"
else
  pack_kernel()
fi

pack_kernel() {
   mkdir /tmp/out
   mv out/arch/$ARCH/boot/$IMAGE_NAME /tmp/out
   if [ $INCLUDE_KO == true ]; then
     mv out/lib/modules /tmp/out
     cd /tmp/out
     7z -y a kernel.zip *
   else
     cd /tmp/out
     7z -y a kernel.zip *
   fi
   mv kernel.zip $WORK
}
