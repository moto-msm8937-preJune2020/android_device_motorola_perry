#
# system.prop for montana
#

# Updater
PRODUCT_PROPERTY_OVERRIDES += \
    lineage.updater.uri=https://raw.githubusercontent.com/montanadevelopment/releases/master/lineage15.1.json

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.HAL3.enabled=0 \
    persist.camera.eis.enable=0

# IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.ims.volte=true \
    ro.config.hw_volte_on=true

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libargs=-d /dev/smd0

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.sensors=montana
