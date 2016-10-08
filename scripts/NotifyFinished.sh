#!/bin/bash

MESSAGE="Provisioning is successfull, please restart or re-login"

osascript -e "display notification \"${MESSAGE}\" with title \"osx-provisioing\""

say "${MESSAGE}'"
