#!/bin/bash

. Context.sh
show_context

cd ${MYSTAGE_HOME}/provisioning

HOMEBREW_CASK_OPTS="--appdir=/Applications" ansible-playbook playbook.yml -i hosts -K
