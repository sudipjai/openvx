#
# Copyright (c) 2012-2016 The Khronos Group Inc.
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and/or associated documentation files (the
# "Materials"), to deal in the Materials without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Materials, and to
# permit persons to whom the Materials are furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Materials.
#
# MODIFICATIONS TO THIS FILE MAY MEAN IT NO LONGER ACCURATELY REFLECTS
# KHRONOS STANDARDS. THE UNMODIFIED, NORMATIVE VERSIONS OF KHRONOS
# SPECIFICATIONS AND HEADER INFORMATION ARE LOCATED AT
#    https://www.khronos.org/registry/
#
# THE MATERIALS ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# MATERIALS OR THE USE OR OTHER DEALINGS IN THE MATERIALS.
#


CONCERTO_ROOT ?= concerto
DIRECTORIES := include examples helper debug libraries kernels sample sample-c++ conformance docs papers tools conformance_tests
# The OpenVX CVPR tutorial is written for Linux only and requires
# OpenCV to be installed
ifdef ENABLE_CVPR_TUTORIAL
DIRECTORIES += tutorial_CVPR/step1_start tutorial_CVPR/step1
DIRECTORIES += tutorial_CVPR/step2_start tutorial_CVPR/step2
DIRECTORIES += tutorial_CVPR/step3_start tutorial_CVPR/step3
endif
OPENVX_SRC := sample
BUILD_TARGET ?= $(CONCERTO_ROOT)/target.mak
# By not setting target combos it will automatically generate them.
#TARGET_COMBOS:=PC:LINUX:x86_64:0:debug:GCC
#TARGET_COMBOS+=PC:LINUX:x86_64:0:release:GCC
#TARGET_COMBOS+=PC:Windows_NT:X64:0:release:CL
#TARGET_COMBOS+=PC:Windows_NT:X64:0:debug:CL
#TARGET_COMBOS+=PC:LINUX:ARM:0:debug:RVCT
include $(CONCERTO_ROOT)/rules.mak
