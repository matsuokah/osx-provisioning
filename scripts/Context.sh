#!/bin/bash

PROVISIONING_HOME=$(cd $(dirname ${BASH_SOURCE:-$0})/../ && pwd)

function print_context() {
  echo =======================
  echo Print context variables.
  echo -----------------------
  echo PROVISIONING_HOME: $PROVISIONING_HOME
  echo =======================
}

function tag_echo () {
  echo [$1] $2
}
