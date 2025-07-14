#!/usr/bin/env sh
##############################################################################
# Gradle wrapper bootstrap script                                            #
##############################################################################
DIR="$(cd "$(dirname "$0")" && pwd)"
# ---------------------------------------------------------------------------
# Ensure a valid gradle-wrapper.jar is present; download if missing/corrupt
# ---------------------------------------------------------------------------
JAR="$DIR/gradle/wrapper/gradle-wrapper.jar"

if [ ! -f "$JAR" ] || ! unzip -t -qq "$JAR" >/dev/null 2>&1 ; then
  echo "Gradle wrapper JAR not found or corrupt – fetching fresh copy..."
  mkdir -p "$DIR/gradle/wrapper"
  DIST_URL=$(grep '^distributionUrl=' "$DIR/gradle/wrapper/gradle-wrapper.properties" \
             | cut -d'=' -f2-)
  TMP_ZIP="$DIR/gradle/wrapper/gradle-dist.zip"
  curl -L "$DIST_URL" -o "$TMP_ZIP"
  unzip -j -q "$TMP_ZIP" '*/lib/gradle-wrapper.jar' -d "$DIR/gradle/wrapper"
  rm -f "$TMP_ZIP"
fi

exec java -jar "$DIR/gradle/wrapper/gradle-wrapper.jar" "$@"
