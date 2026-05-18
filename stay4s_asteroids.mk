#
# SPDX-FileCopyrightText: 2026 Stay4S
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/nothing/asteroids/lineage_asteroids.mk)

PRODUCT_NAME := stay4s_asteroids
PRODUCT_MODEL := Stay4S GrokPhone

PRODUCT_PRODUCT_PROPERTIES += \
    ro.stay4s.product=stay4s_asteroids
