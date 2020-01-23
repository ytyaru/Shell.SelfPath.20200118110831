#!/usr/bin/env bash
SelfPath() { echo "$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd -P)/$(basename "${BASH_SOURCE:-$0}")"; }
SelfPath
