#!/bin/bash

PROVISIONING_HOME=$(cd $(dirname $0) && pwd)
ANSIBLE_VERSION_MAJOR=$(echo $(ansible --version) | sed -E "s/.*[^0-9]([0-9]+\.[0-9]+\.[0-9]+).*/\1/g" | cut -d"." -f1)

function show_context() {
  echo "PROVISIONING_HOME=${PROVISIONING_HOME}"
  echo "ANSIBLE_VERSION_MAJOR=${ANSIBLE_VERSION_MAJOR}"
}
