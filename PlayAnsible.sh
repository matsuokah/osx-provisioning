#!/bin/bash

. Context.sh
show_context

cd ${MYSTAGE_HOME}/provisioning

ansible-playbook playbook.yml -i hosts -K
