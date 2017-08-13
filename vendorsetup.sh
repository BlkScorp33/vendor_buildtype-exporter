function buildtype() {
echo "Now choose your rom build type"
echo " 1) Unofficial (clears all buildtypes)"
echo " 2) Experimental"
echo " 3) Nightly"
echo " 4) Weekly"
echo " 5) Release"
echo " 6) Custom entry"
echo "Choose number selection[7 and above = exit]:"
read input
if [[ "$input" == "1" ]];then
unset BUILDTYPE_EXPERIMENTAL
unset BUILDTYPE_NIGHTLY
unset BUILDTYPE_WEEKLY
unset BUILDTYPE_RELEASE
unset DESO_BUILD_TYPE
elif [[ "$input" == "2" ]];then
export BUILDTYPE_EXPERIMENTAL=true
elif [[ "$input" == "3" ]]; then
export BUILDTYPE_NIGHTLY=true
elif [ "$input" == "4" ];then
export BUILDTYPE_WEEKLY=true
elif [ "$input" == "5" ];then
export BUILDTYPE_RELEASE=true
elif [ "$input" == "6" ];then
buildtype-custom
elif [ "$input" -gt "6" ];then
echo "Exiting .... "
return
fi
}

function buildtype-custom() {
unset BUILDTYPE_EXPERIMENTAL
unset BUILDTYPE_NIGHTLY
unset BUILDTYPE_WEEKLY
unset BUILDTYPE_RELEASE
if [[ $DESO_BUILD_TYPE != "" ]];then
echo "Current custom entry: $DESO_BUILD_TYPE"
echo
fi
echo "Input MUST be alphanumeric!"
echo "Enter your desired text [99 to return to main]:"
read input
if [[ "$input" == "99" ]];then
buildtype
else
export DESO_BUILD_TYPE=$input
fi
}
 
echo 'included buildtype exporter: type "buildtype" to utilize this function'
