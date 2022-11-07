#!/bin/bash/autoBuild
default_env="$2"
if [[ "$default_env" == "" ]]; then
  default_env="firebase"
fi
  echo "Build ios $default_env"
  cd ios
  fastlane ios "$default_env"