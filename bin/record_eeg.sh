#!/usr/bin/env bash
DIR="$(cd "$(dirname "$0")"/..; pwd)"
java -Djava.library.path="$DIR/lib/$(uname -s | tr A-Z a-z)" \
     -jar  "$DIR/ADS1299EEGFESoftware.jar"  "$@"
