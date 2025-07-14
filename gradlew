#!/usr/bin/env sh
##############################################################################
# Gradle wrapper bootstrap script                                            #
##############################################################################
DIR="$(cd "$(dirname "$0")" && pwd)"
exec java -jar "$DIR/gradle/wrapper/gradle-wrapper.jar" "$@"
