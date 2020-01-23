#!/usr/bin/env bash
echo $(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd -P)/$(basename "${BASH_SOURCE:-$0}")
