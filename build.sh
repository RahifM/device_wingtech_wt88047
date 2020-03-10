#!/bin/bash

#
# The "Fuck Jack Build Script"
#
# Written by Michael S Corigliano (Mike Criggs) (michael.s.corigliano@gmail.com)
#
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# Please maintain this if you use this script or any part of it
#
#
# The purpose of this script is to work around JACK and NINJA, which have been
# broken in AOSP as of android-7.0.
#
# Usage: ./build.sh <DEVICE>
#

DEVICE="$1"

# Tell the environment not to use NINJA
	export USE_NINJA=false

# Delete the JACK server located in /home/<USER>/.jack*
#	rm -rf ~/.jack*

# Resize the JACK Heap size
#	export ANDROID_JACK_VM_ARGS="-Xmx4g -Dfile.encoding=UTF-8 -XX:+TieredCompilation"

# Restart the JACK server
#	./prebuilts/sdk/tools/jack-admin kill-server
#	./prebuilts/sdk/tools/jack-admin start-server
#
# Optionally, you may want to clear CCACHE if you still have issues
#        ccache -C
#        export USE_CCACHE=1
#        prebuilts/misc/linux-x86/ccache/ccache -M 50G

# Make a clean build, building dirty after you have had jack issues may result in a failed build
#	make clean

# Fix java out of memory
#export _JAVA_OPTIONS=-Xmx5g

# Compile the build
	. build/envsetup.sh && lunch aosp_wt88047-eng && make api-stubs-docs && make hiddenapi-lists-docs && make system-api-stubs-docs && make test-api-stubs-docs && m -j1 otapackage 2>&1 | tee buildlog.txt
