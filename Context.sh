#!/bin/bash

MYSTAGE_HOME=$(cd $(dirname $0) && pwd)

function show_context() {
  echo "MYSTAGE_HOME=${MYSTAGE_HOME}"
}
