#!/bin/bash

. Context.sh
show_context

cd ${MYSTAGE_HOME}/provisioning

ANSIBLE_VERSION_MAJOR=$(echo $(ansible --version) | sed -E "s/.*[^0-9]([0-9]+\.[0-9]+\.[0-9]+).*/\1/g" | cut -d"." -f1)

if [ $ANSIBLE_VERSION_MAJOR -eq 1 ]
then
  PLAYBOOK=playbook_v1.yml
else
  PLAYBOOK=playbook.yml
fi

echo doing playbook is ... $PLAYBOOK

HOMEBREW_CASK_OPTS="--appdir=/Applications" ansible-playbook ${PLAYBOOK} -i hosts -K
