#
# Stay4S product integration for Nothing asteroids.
#

$(call inherit-product-if-exists, device/nothing/asteroids/vendor/nothing/stay4s/stay4s_config.mk)

PRODUCT_PRODUCT_PROPERTIES += \
    ro.stay4s.enabled=true \
    ro.stay4s.grokphone.enabled=true \
    ro.stay4s.target_device=asteroids
