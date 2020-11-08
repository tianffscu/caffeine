#!/bin/bash
set -eu

run() {
  echo $1
  eval $1
}

run "./gradlew check --console plain"
run "./gradlew :caffeine:slowCaffeineTest --console plain"
run "./gradlew :caffeine:slowGuavaTest --console plain"
