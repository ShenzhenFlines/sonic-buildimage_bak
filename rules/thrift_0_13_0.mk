# thrift package

THRIFT_VERSION_0_13_0 = 0.13.0
THRIFT_VERSION_0_13_0_FULL = $(THRIFT_VERSION_0_13_0)-6

LIBTHRIFT_0_13_0 = libthrift-$(THRIFT_VERSION_0_13_0)_$(THRIFT_VERSION_0_13_0_FULL)_$(CONFIGURED_ARCH).deb
$(LIBTHRIFT_0_13_0)_SRC_PATH = $(SRC_PATH)/thrift_0_13_0
SONIC_MAKE_DEBS += $(LIBTHRIFT_0_13_0)

LIBTHRIFT_DEV_0_13_0 = libthrift-dev_$(THRIFT_VERSION_0_13_0_FULL)_$(CONFIGURED_ARCH).deb
$(eval $(call add_derived_package,$(LIBTHRIFT_0_13_0),$(LIBTHRIFT_DEV_0_13_0)))

PYTHON3_THRIFT_0_13_0 = python3-thrift_$(THRIFT_VERSION_0_13_0_FULL)_$(CONFIGURED_ARCH).deb
$(eval $(call add_derived_package,$(LIBTHRIFT_0_13_0),$(PYTHON3_THRIFT_0_13_0)))

THRIFT_COMPILER_0_13_0 = thrift-compiler_$(THRIFT_VERSION_0_13_0_FULL)_$(CONFIGURED_ARCH).deb
$(eval $(call add_derived_package,$(LIBTHRIFT_0_13_0),$(THRIFT_COMPILER_0_13_0)))
