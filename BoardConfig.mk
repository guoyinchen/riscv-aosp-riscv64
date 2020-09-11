# config.mk
#
# Product-specific compile-time definitions.
#

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true

# Three base ISAs 
#RV32I: A load-store ISA with 32, 32-bit general-purpose integer registers.
#RV32E: An embedded flavor of RV32I with only 16 integer registers.
#RV64I: A 64-bit flavor of RV32I where the general-purpose integer registers are 64-bits wide.
#The extensions 
#M: Integer Multiplication and Division
#A: Atomic Instructions
#F: Single-Precision Floating-Point
#D: Double-Precision Floating-Point
#C: Compressed Instructions
#valid archs as rv32i rv32im rv64imafdc, etc
TARGET_ARCH := rv64 
TARGET_ARCH_VARIANT := rv64i
TARGET_CPU_VARIANT := generic

#ilp32: int, long, and pointers are all 32-bits long. long long is a 64-bit type, char is 8-bit, and short is 16-bit.
#lp64: long and pointers are 64-bits long, while int is a 32-bit type. The other types remain the same as ilp32.
#"" (the empty string): No floating-point arguments are passed in registers.
#f: 32-bit and smaller floating-point arguments are passed in registers. This ABI requires the F extension,
#   as without F there are no floating-point registers.
#d: 64-bit and smaller floating-point arguments are passed in registers. This ABI requires the D extension.
#valid abis as ilp32, ilp32f, ilp32d, lp64, lp64f, lp64d
TARGET_CPU_ABI := lp64 

#TARGET_2ND_ARCH := arm
#TARGET_2ND_ARCH_VARIANT := armv7-a-neon
#TARGET_2ND_CPU_VARIANT := cortex-a15
#TARGET_2ND_CPU_ABI := armeabi-v7a
#TARGET_2ND_CPU_ABI2 := armeabi

TARGET_USES_64_BIT_BINDER := true

# Apex
TARGET_FLATTEN_APEX := true

SMALLER_FONT_FOOTPRINT := true
MINIMAL_FONT_FOOTPRINT := true
# Some framework code requires this to enable BT
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/generic/common/bluetooth

BOARD_USES_GENERIC_AUDIO := true

USE_CAMERA_STUB := true

BUILD_EMULATOR_OPENGL := true
USE_OPENGL_RENDERER := true

USE_XML_AUDIO_POLICY_CONF := 1

BOARD_USE_LEGACY_UI := true

# PDK does not use ext4 image, but it is added here to prevent build break.
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824 # 1 GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 576716800
BOARD_CACHEIMAGE_PARTITION_SIZE := 69206016
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
