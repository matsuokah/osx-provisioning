#!/bin/sh

XCODE_URL="https://itunes.apple.com/jp/app/id497799835?mt=8"

xcodebuild -version > /dev/null 2>&1

if [ $? -eq 0 ];
then
  echo Xcode is installed.
else
  echo Xcode is not intalled.
  echo Please install Xcode at $XCODE_URL
  exit 1
fi
