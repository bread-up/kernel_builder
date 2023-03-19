#!/bin/bash env

# SOURCE
export KERNEL_SOURCE="https://github.com/bread-up/android_kernel_samsung_exynos7870"
export SOURCE_BRANCH="stock"

# BUILDER
export BUILDER="gcc"
export USE_CUSTOM_CLANG=""
#export CLANG_SOURCE=""
#export CLANG_SOURCE_BRANCH=""

# SPECS
export DEFCONFIG=exynos7870-m10lte_defconfig
export ARCH=arm64
export PLATFORM_VERSION=10
export ANDROID_MAJOR_VERSION=q
export IMAGE_NAME=Image
export CF=--Werror

# OUTPUT
export INCLUDE_KO="true"
