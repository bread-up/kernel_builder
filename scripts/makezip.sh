#!/bin/bash

kernelpath() {
  NK=""
  if [ -z ${IMAGE_NAME+x} ]; then
   echo "Image doesnt exists, use default Image name"
   NK="Image"
  else
   NK=$IMAGE_NAME
  fi
  mv arch/$ARCH/boot/$NK /tmp
  return $NK
}

WORK=../$(pwd)

if [ $USE_ANYKERNEL3 == "true" ]; then
  echo "ok"
else 
  cd /tmp
  kernelpath
  7z -y a kernel.zip echo $?
  mv kernel.zip $WORK
fi