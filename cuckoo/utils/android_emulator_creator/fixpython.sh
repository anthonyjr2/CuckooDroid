#/usr/bin/env bash

#this script is meant for easy creation on an analysis machine for android emulator avd

#Path to the local installation of the adb - android debug bridge utility.
#ADB=/Applications/adt-bundle/sdk/platform-tools/adb

ADB=$(which adb)

if [ ! -f $ADB ]
then
    echo "Error: adb path is not valid."
    exit
fi
echo "adb has been found."

# Install new Cuckoo Agent and Python for ARM
echo "Installing Cuckoo Agent and Python for ARM"
$ADB push ../../agent/android/python_agent/* /data/local/
$ADB shell chmod 06755 /data/local/aapt
$ADB shell chmod 06755 /data/local/agent.sh
$ADB shell chmod 06755 /data/local/python/bin/python

echo "Device is ready!"


