#!/usr/bin/env sh
set -eu
cd "$(dirname "$0")"
JAVA_VERSION=$(java -XshowSettings:properties -version 2>&1 | sed -n 's/^[[:space:]]*java.specification.version = \([0-9][0-9]*\).*/\1/p')
if [ -z "$JAVA_VERSION" ] || [ "$JAVA_VERSION" -lt 25 ]; then
  echo "Java 25 or newer is required. Install it and ensure java is on PATH." >&2
  exit 1
fi
if command -v mvn >/dev/null 2>&1; then exec mvn javafx:run; fi
exec ./mvnw javafx:run
