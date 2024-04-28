#!/bin/bash

set -eo pipefail

ABBREV='min-stage1'
CODE_NAME='sid'
DISTRO=`cat params/distro.txt`
OWNER=`cat params/owner.txt`

rm -rf tmp

bin/build-all "$ABBREV" "$CODE_NAME" "$DISTRO" "$OWNER"
