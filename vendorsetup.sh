#!/bin/bash
echo "Now choose your rom build type"
echo " 1) Unofficial"
echo " 2) Experimental"
echo " 3) Nightly"
echo " 4) Weekly"
echo " 5) Release"
echo "Choose number selection[6 and above = exit]:"
read input
if [ "$input" == "2" ];then
export BUILDTYPE_EXPERIMENTAL=true
fi
if [ "$input" == "3" ];then
export BUILDTYPE_NIGHTLY=true
fi
if [ "$input" == "4" ];then
export BUILDTYPE_WEEKLY=true
fi
if [ "$input" == "5" ];then
export BUILDTYPE_RELEASE=true
fi
if [ "$input" -gt "5" ];then
echo "Exiting .... "
sleep 2
return
fi
clear
echo "Now choose your device/variant lunch combo ...."
lunch
