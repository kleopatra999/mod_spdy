# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := mod_spdy_version_header
### Rules for action "version_header":
quiet_cmd_build_build_util_gyp_mod_spdy_version_header_target_version_header = ACTION Generating version header file: "$(obj)/gen/mod_spdy/common/version.h" $@
cmd_build_build_util_gyp_mod_spdy_version_header_target_version_header = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd build; mkdir -p $(obj)/gen/mod_spdy/common; python version.py -f ../mod_spdy/common/VERSION -f "$(obj)/gen/build/LASTCHANGE" ../mod_spdy/common/version.h.in "$(obj)/gen/mod_spdy/common/version.h"

$(obj)/gen/mod_spdy/common/version.h: obj := $(abs_obj)
$(obj)/gen/mod_spdy/common/version.h: builddir := $(abs_builddir)
$(obj)/gen/mod_spdy/common/version.h: TOOLSET := $(TOOLSET)
$(obj)/gen/mod_spdy/common/version.h: mod_spdy/common/VERSION $(obj)/gen/build/LASTCHANGE mod_spdy/common/version.h.in FORCE_DO_CMD
	$(call do_cmd,build_build_util_gyp_mod_spdy_version_header_target_version_header)

all_deps += $(obj)/gen/mod_spdy/common/version.h
action_build_build_util_gyp_mod_spdy_version_header_target_version_header_outputs := $(obj)/gen/mod_spdy/common/version.h


### Rules for final target.
# Build our special outputs first.
$(obj).target/build/mod_spdy_version_header.stamp: | $(action_build_build_util_gyp_mod_spdy_version_header_target_version_header_outputs)

# Preserve order dependency of special output on deps.
$(action_build_build_util_gyp_mod_spdy_version_header_target_version_header_outputs): | $(obj).target/build/lastchange.stamp

$(obj).target/build/mod_spdy_version_header.stamp: TOOLSET := $(TOOLSET)
$(obj).target/build/mod_spdy_version_header.stamp: $(obj).target/build/lastchange.stamp FORCE_DO_CMD
	$(call do_cmd,touch)

all_deps += $(obj).target/build/mod_spdy_version_header.stamp
# Add target alias
.PHONY: mod_spdy_version_header
mod_spdy_version_header: $(obj).target/build/mod_spdy_version_header.stamp

# Add target alias to "all" target.
.PHONY: all
all: mod_spdy_version_header

