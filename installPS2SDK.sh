#!/bin/bash

#add the following stuff to your enviroment variable, change the path of $PS2DEV to alter the location of the SDK, the value written is the default and recommended one
#export PS2DEV=/usr/local/ps2dev
#export PS2SDK=$PS2DEV/ps2sdk
#export GSKIT=$PS2DEV/gsKit
#export PATH=$PATH:$PS2DEV/bin:$PS2DEV/ee/bin:$PS2DEV/iop/bin:$PS2DEV/dvp/bin:$PS2SDK/bin

echo "IMPORTANT NOTE. IF USING WSL, YOU NEED TO INSTALL CMAKE WITH brew.sh."
echo DONT USE APT, IT WILL INSTALL OUTDATED CMAKE THAT WILL MAKE COMPILATION FAIL ON A LATE STAGE OF THE BUILDING PROCESS \(PS2SDK-Ports more specifically\).
echo "wasting precious time"
echo "this script contains a sample of what variables you should add"

echo make sure to check the comments on this script, 
if [ -z ${PS2DEV+x} ]; then 
  echo "PS2DEV is not set"
  exit -1
else
  echo "PS2DEV is set to '$PS2DEV'"
fi

if [ -z ${PS2SDK+x} ]; then
  echo "PS2SDK is not set"
  exit -1
else 
  echo "PS2SDK is set to '$PS2SDK'"
fi

if [ -z ${GSKIT+x} ]; then 
  echo "GSKIT is not set";
  exit -1
else 
  echo "GSKIT is set to '$GSKIT'"
fi

if [[ $PATH == *$PS2DEV* ]]; then
  echo "PS2DEV variables seem to be included on PATH, double check by yourself!"
else
  echo "Could not find any reference to PS2DEV variable on PATH variable"
  exit -2
fi

echo Cleaning target directory...
sudo rm -rf $PS2DEV

echo Creating folder...
sudo mkdir -p $PS2SDK && sudo chmod -R 777 $PS2DEV

echo Cloning and Building PS2DEV
cd $PS2DEV && git clone https://github.com/ps2dev/ps2dev.git

echo Building SDK...
sleep 5
cd ps2dev && ./build-all.sh
echo EXECUTION FINISHED!
echo TEST IF SDK WORKS BY COMPILING wLaunchELF or OPL
