#!/usr/bin/env bash
SelfPath() { echo "$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)/$(basename "${BASH_SOURCE:-$0}")"; }
SelfPath
