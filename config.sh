#!/bin/bash env

# SOURCE
export KERNEL_SOURCE="https://github.com/bread-up/android_kernel_samsung_exynos7870"
export SOURCE_BRANCH="nethunter"

# BUILDER
export BUILDER="gcc"
#export SDCLANG="false"

# SPECS
export DEFCONFIG=nh-m10lte_defconfig
export ARCH=arm64
export PLATFORM_VERSION=10
export ANDROID_MAJOR_VERSION=q
