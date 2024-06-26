#!/bin/env python3
#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import common
import re

def FullOTA_InstallBegin(info):
  AddImage(info, "super_empty.img", "/tmp/super_empty.img", False);
  info.script.AppendExtra('exynos7870.retrofit_dynamic_partitions();')
  return

def AddImage(info, basename, dest, printInfo=True):
  data = info.input_zip.read("IMAGES/" + basename)
  common.ZipWriteStr(info.output_zip, basename, data)
  if printInfo:
    info.script.Print("Patching {} image unconditionally...".format(dest.split('/')[-1]))
  info.script.AppendExtra('package_extract_file("%s", "%s");' % (basename, dest))
