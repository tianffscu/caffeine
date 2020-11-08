#!/bin/bash
set -eu

run() {
  echo $1
  eval $1
}

run "./gradlew pmdJavaPoet pmdMain -Dpmd --console plain"
run "./gradlew spotbugsJavaPoet spotbugsMain spotbugsJmh -Dspotbugs --console plain"
