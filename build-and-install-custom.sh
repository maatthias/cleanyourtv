#!/usr/bin/env bash
# Build and install CleanYourTV launcher with custom dock config
TV_HOST=${TV_HOST:?set TV_HOST}
cd "$(dirname "$0")/launcher"
JAVA_HOME=/tmp/jdk-17.0.21+9 PATH=/tmp/jdk-17.0.21+9/bin:$PATH ANDROID_HOME=/tmp/android-sdk ./gradlew assembleRelease
TV_HOST=$TV_HOST JAVA_HOME=/tmp/jdk-17.0.21+9 PATH=/tmp/jdk-17.0.21+9/bin:$PATH ANDROID_HOME=/tmp/android-sdk ./build-and-install.sh
