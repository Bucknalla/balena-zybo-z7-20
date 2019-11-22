IMAGE_FSTYPES_append_zybo-zz-20 = " resinos-img"

# Customize resinos-img
RESIN_BOOT_PARTITION_FILES_zynq-z7-20 = " \
    boot.bin: \
    u-boot-${MACHINE}.img:/u-boot-dtb.img \
    uEnv.txt: \
    uImage: \
    device-trees/zynq-z7-20.dtb:/ \
    "