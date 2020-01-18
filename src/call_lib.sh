#!/usr/bin/env bash
Run() { "$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)/lib.sh"; }
Load() {
	. "$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)/lib.sh"
	SelfPath
}
Run
Load
