#!/bin/bash/autoBuild
default_platform="$1"
default_env="$2"
if [[ "$default_platform" == "" ]]; then
  default_platform="all"
fi
if [[ "$default_env" == "" ]]; then
  default_env="firebase"
fi
if [[ "$default_platform" == "android" ]]; then
  echo "Build android $default_env"
  cd android
  fastlane android "$default_env"
elif [[ "$default_platform" == "ios" ]]; then
    echo "Build ios $default_env"
    cd ios
    fastlane ios "$default_env"
else
    echo "Build all $default_env"
    cd android
    fastlane android "$default_env"
    cd ../ios
    fastlane ios "$default_env"
fi