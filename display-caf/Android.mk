ifeq ($(TARGET_DEVICE),athene)

display-hals := libgralloc libcopybit libmemtrack libqservice libqdutils
display-hals += hdmi_cec
display-hals += libgenlock libhwcomposer liboverlay libhdmi
display-hals += liblight
ifeq ($(call is-vendor-board-platform,QCOM),true)
    include $(call all-named-subdir-makefiles,$(display-hals))
else
ifneq ($(filter msm% apq%,$(TARGET_BOARD_PLATFORM)),)
    include $(call all-named-subdir-makefiles,$(display-hals))
endif
endif

endif
