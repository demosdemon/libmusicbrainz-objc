#!/usr/bin/env sh

## @file clean.sh
## @date Jul 30 2012
## @copyright
##   2012 Brandon LeBlanc <demosdemon@gmail.com>
##   This program is made avaliable under the terms of the MIT License.
##
## @brief Delete generated header on xcode clean

if [ "$ACTION" == "clean" ]
 then
  rm -rf "$PROJECT_DIR/libmusicbrainz-objc/MBGeneratedDefines.h"
 fi

