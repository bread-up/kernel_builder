#!/bin/bash env

# DEVICE SPECS:
export DEFCONFIG="nh-m10lte_defconfig"
export ARCH="arm64"
export KERNEL_LINK="https://github.com/bread-up/android_kernel_samsung_exynos7870"
export KERNEL_BRANCH="nethunter"

# BUILDER
export BUILDER="gcc"
# export CLANG_VERSION=""
# export EXTRAFLAGS=""

# EXTRAS
export USE_ANYKERNEL=false
# export AK_BOOT_PATH="/dev/block/by-name/BOOT"
# export AK_CODENAME="m10lte"
# export CHECK_BY_CODENAME=true
