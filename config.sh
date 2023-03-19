#!/bin/bash env

# SOURCE
export KERNEL_SOURCE="https://github.com/bread-up/android_kernel_samsung_exynos7870"
export SOURCE_BRANCH="stock"

# BUILDER
export BUILDER="gcc"
#export SDCLANG="false"

# SPECS
export DEFCONFIG=exynos7870-m10lte_defconfig
export ARCH=arm64
export PLATFORM_VERSION=10
export ANDROID_MAJOR_VERSION=q

# OUTPUT
export IMAGE_NAME="Image"
export USE_ANYKERNEL3="false"
