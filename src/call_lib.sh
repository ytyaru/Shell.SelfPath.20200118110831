#!/usr/bin/env bash
Run() { "$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd -P)/lib.sh"; }
Load() {
	. "$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd -P)/lib.sh"
	SelfPath
}
Run
Load
