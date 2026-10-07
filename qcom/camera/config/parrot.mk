ifneq ($(CONFIG_XIAOMI_DEVICE_DTBS),y)
dtbo-$(CONFIG_ARCH_PARROT) := parrot-camera.dtbo
dtbo-$(CONFIG_ARCH_PARROT) += parrot-lite-camera.dtbo
dtbo-$(CONFIG_ARCH_PARROT) += parrot-camera-sensor-idp.dtbo
dtbo-$(CONFIG_ARCH_PARROT) += parrot-lite-camera-sensor-idp.dtbo
dtbo-$(CONFIG_ARCH_PARROT) += parrot-camera-sensor-qrd.dtbo
endif # !CONFIG_XIAOMI_DEVICE_DTBS

dtbo-$(CONFIG_ARCH_RAVELIN) += raveline-camera.dtbo
ifeq ($(CONFIG_XIAOMI_DEVICE_DTBS),y)
else
dtbo-$(CONFIG_ARCH_RAVELIN) += raveline-camera-sensor-idp.dtbo
dtbo-$(CONFIG_ARCH_RAVELIN) += raveline-camera-sensor-qrd.dtbo
dtbo-$(CONFIG_ARCH_RAVELIN) += raveline-camera-sensor-iot.dtbo
endif # CONFIG_XIAOMI_DEVICE_DTBS
