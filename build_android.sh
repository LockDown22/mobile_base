#!/bin/bash/autoBuild
default_env="$2"
if [[ "$default_env" == "" ]]; then
  default_env="firebase"
fi
  echo "Build android $default_env"
  cd android
  fastlane android "$default_env"