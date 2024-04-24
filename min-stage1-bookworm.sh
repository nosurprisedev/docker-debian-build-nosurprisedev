#!/bin/bash

set -eo pipefail

ABBREV='min-stage1'
CODE_NAME='bookworm'
DISTRO='debian'
OWNER='no-surprise-dev'

rm -rf tmp

bin/build-all "$ABBREV" "$CODE_NAME" "$DISTRO" "$OWNER"
