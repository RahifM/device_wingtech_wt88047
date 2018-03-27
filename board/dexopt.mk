ifeq ($(HOST_OS),linux)
    ifneq ($(TARGET_BUILD_VARIANT),eng)
        ifeq ($(WITH_DEXPREOPT),)
            WITH_DEXPREOPT := false
        endif
    endif
endif
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
