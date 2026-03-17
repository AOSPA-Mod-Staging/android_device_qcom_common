include device/qcom/common/qcom_defs.mk

ifneq ($(filter $(4_9_FAMILY) $(4_14_FAMILY) $(4_19_FAMILY) $(5_4_FAMILY),$(TARGET_BOARD_PLATFORM)),)
    include device/qcom/sepolicy_vndr/legacy-um/SEPolicy.mk
else ifneq ($(filter $(5_10_FAMILY),$(TARGET_BOARD_PLATFORM)),)
    include device/qcom/sepolicy_vndr/sm8450/SEPolicy.mk
else ifneq ($(filter $(5_15_FAMILY),$(TARGET_BOARD_PLATFORM)),)
    include device/qcom/sepolicy_vndr/sm8550/SEPolicy.mk
else ifneq ($(filter $(6_1_FAMILY),$(TARGET_BOARD_PLATFORM)),)
    include device/qcom/sepolicy_vndr/sm8650/SEPolicy.mk
else ifneq ($(filter $(6_6_FAMILY),$(TARGET_BOARD_PLATFORM)),)
    include device/qcom/sepolicy_vndr/sm8750/SEPolicy.mk
endif

-include device/lineage/sepolicy/qcom/sepolicy.mk
