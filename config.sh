#!/bin/bash env

# SOURCE
export KERNEL_SOURCE="https://github.com/bread-up/android_kernel_samsung_exynos7870" # kernel source should be uploaded in github or gitlab
export SOURCE_BRANCH="pk" # branch of source

# BUILDER
export BUILDER="gcc" # use gcc or clang
#export USE_CUSTOM_CLANG="true" #if you want to use custom clang then remove #
#export CLANG_SOURCE="" # add link of your custom clang should be in github or gitlab
#export CLANG_SOURCE_BRANCH="" # add branch of clang source

# SPECS
# your device spec
export DEFCONFIG=exynos7870-m10lte_defconfig
export ARCH=arm64
export PLATFORM_VERSION=10
export ANDROID_MAJOR_VERSION=q
# add all device stuff
export IMAGE_NAME=Image # Image name: Image, Image.gz, Image.gz-dtb

# OUTPUT
export INCLUDE_KO="false" # include ko module
export USE_ANYKERNEL="true" # add it to make a flashable file and edit anykernel.sh in Anykernel3 folder
