# Inherit full common DerpFest stuff
$(call inherit-product, vendor/derp/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# UDFPS Animation effects
PRODUCT_PACKAGES += \
    UdfpsAnimations

# Include DerpFest LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/derp/overlay/dictionaries

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

# Don't dexpreopt prebuilts. (For GMS).
DONT_DEXPREOPT_PREBUILTS := true

# Include GMS, Modules, and Pixel features.
$(call inherit-product, vendor/google/gms/config.mk)
$(call inherit-product-if-exists, vendor/google/modules/build/mainline_modules_r.mk)
$(call inherit-product, vendor/google/pixel/config.mk)

# Inherit from telephony config
$(call inherit-product, vendor/derp/config/telephony.mk)
