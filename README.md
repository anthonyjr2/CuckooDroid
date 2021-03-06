
This repository is a fork of the original CuckooDroid from idanr1986 (https://github.com/idanr1986/cuckoo-droid) but updated to fix a few bugs and allow dynamic analysis to work, as well as including the latest working version of Cuckoo Sandbox (1.2).


Documentation
=============
- CuckooDroid - http://cuckoo-droid.readthedocs.org/
- Cuckoo Sandbox - http://cuckoo.readthedocs.org/

You are advised to read the Cuckoo Sandbox documentation before using CuckooDroid!

Unfortunately, the CuckooDroid documentation is out of date, although it is still useful in getting to know the basics of the setup.


All credit goes to Idan Revivo - idanr1986@gmail.com (twitter: idanr86)

Modifications made and compiled by Anthony Muratore - anthonymuratore@outlook.com


Instructions:

AVDs can be created in ~/Android/Sdk/tools/bin/avdmanager using the command
./avdmanager

./avdmanager create avd -n "aosx" -k "system-images;android-16;default;armeabi-v7a" -c 1000M

emulator -avd aosx -qemu -nand -system,size=0x1f400000,file=/home/amurato1/Android/Sdk/system-images/android-16/default/armeabi-v7a/system.img&
// this starts the emulator normally, but the system image is not writable.


To change reference image:
emulator -avd aosx -writable-system -qemu -nand syst,size=0x1f400000,file=/home/amurato1/.android/avd/aosx.avd/system-qemu.img

then, save the image while the VM is running:
cp ~/.android/avd/aosx.avd/system-qemu.img /home/amurato1/Android/Sdk/system-images/android-16/default/armeabi-v7a/system.img

to run django server:
in /cuckoo/web_android/
sudo python2 manage.py runserver 0.0.0.0:8080

to run cuckoo:
in /cuckoo/
sudo python2 cuckoo.py

