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
  # Gradle ≥5 ships the file as gradle-wrapper-<ver>.jar – grab it and rename
  unzip -p "$TMP_ZIP" '*/lib/gradle-wrapper-*.jar' > "$JAR" && rm -f "$TMP_ZIP"
fi

# Choose java from JAVA_HOME when set, else fall back to PATH
JAVA_CMD="${JAVA_HOME:+${JAVA_HOME}/bin/}java"
exec "$JAVA_CMD" -classpath "$DIR/gradle/wrapper/gradle-wrapper.jar" \
     org.gradle.wrapper.GradleWrapperMain "$@"
