#!/bin/bash

. $(dirname ${BASH_SOURCE:-$0})/Context.sh
print_context
tag_echo $(basename $0) "Doing common playbook"

cd ${PROVISIONING_HOME}/provisioning > /dev/null 2>&1
ansible-playbook site.yml --connection=local
