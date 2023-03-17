#!/bin/bash env

if [[ "$BUILDER" == "gcc"  ]];then
   setupdefconfig()
   make ARCH=$ARCH -j`nproc`
   zipoutput()
fi

setupdefconfig() {
   make $DEFCONFIG
}

zipoutput() {
   if [[ $USE_ANYKERNEL == false  ]];then
      zip kernel.zip arch/arm64/boot/Image
   fi
}
