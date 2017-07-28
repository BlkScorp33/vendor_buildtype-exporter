#!/bin/bash
echo "Now choose your rom build type"
echo " 1) Unofficial"
echo " 2) Experimental"
echo " 3) Nightly"
echo " 4) Weekly"
echo " 5) Release"
echo "Choose number selection[6 and above = exit]:"
read input
if [[ "$input" == "2" ]];then
export BUILDTYPE_EXPERIMENTAL=true
elif [[ "$input" == "3" ]]; then
export BUILDTYPE_NIGHTLY=true
elif [ "$input" == "4" ];then
export BUILDTYPE_WEEKLY=true
elif [ "$input" == "5" ];then
export BUILDTYPE_RELEASE=true
elif [ "$input" -gt "5" ];then
echo "Exiting .... "
sleep 2
return
fi
#while read -p "Start an immediate build? [Y/y or N/n]" input2
#do
#case "$input2" in
#  Y|y)
#    echo "Choose your device/variant lunch combo ...."
#    brunch
#    break
#    ;;
#  N|n)
#    clear
#    lunch
#    break
#    ;;
#  *)
#  	echo
#  	echo "Invalid try again!"
#  	echo
#  	;;
#esac
#done
