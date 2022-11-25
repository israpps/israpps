#!/bin/bash

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

PS2DEVTAG="MASTER"

echo -e "\t\t PS2DEV enviroment installation script by Matias Israelson (AKA: El_isra)\n\n"

#add the following stuff to your enviroment variable, change the path of $PS2DEV to alter the location of the SDK, the value written is the default and recommended one
#export PS2DEV=/usr/local/ps2dev
#export PS2SDK=$PS2DEV/ps2sdk
#export GSKIT=$PS2DEV/gsKit
#export PATH=$PATH:$PS2DEV/bin:$PS2DEV/ee/bin:$PS2DEV/iop/bin:$PS2DEV/dvp/bin:$PS2SDK/bin

echo -e "IMPORTANT NOTE. IF USING WSL, YOU NEED TO INSTALL CMAKE WITH ${BLUE}brew.sh${NC}"
echo -e "DONT USE APT, IT WILL INSTALL OUTDATED CMAKE THAT WILL MAKE COMPILATION FAIL ON A LATE STAGE OF THE BUILDING PROCESS (PS2SDK-Ports more specifically)."
echo -e "wasting precious time\n\n"
echo "this script contains a sample of what variables you should add"
echo "make sure to check the comments on this script."

for i in $@
do 
  if [ "$i" = "--help" ]; then
	echo "available switches:"
	echo -e "\t${YELLOW}[--install-apt-dependencies]${NC}: attempt to install the SDK dependencies via apt (CMAKE is also needed, but excluded from this switch)"
	echo -e "\t${YELLOW}[--profile-add-variables]${NC}   : writes the needed enviroment variables to ~/.profile and reloads profile"
	echo -e "\t${YELLOW}[--sdk-tag=${BLUE}TAG${YELLOW}]${NC}             : use ${BLUE}TAG${NC} to switch SDK tag, building the specified version of PS2SDK instead of Latest"
	exit
  fi

  if [ "$i" = "--install-apt-dependencies" ]; then
	echo -e "${YELLOW}-- Installing apt dependencies...${NC}"
	sudo apt update
	sudo apt upgrade
    sudo apt-get -y install build-essential git mercurial libc6-dev zlib1g zlib1g-dev libucl1 libucl-dev autoconf gcc clang make patch git texinfo flex bison gettext wget libgsl-dev libgslcblas0 libgsl23 gsl-bin libgmp-dev libmpfr-doc libgmp3-dev libmpfr-dev libmpc-dev mpc zip unzip
    sudo apt-get -y install ucl
    sudo apt-get -y install upx-ucl
  fi

  if [[ "$i" = "--sdk-tag=v"* ]]; then
	echo -e "${YELLOW}- specific SDK tag requested${NC}"
	PS2DEVTAG="${i#*=}"
	echo -e "PS2SDK will be built on version ${BLUE}${PS2DEVTAG}${NC}"
  fi
  
  if [ "$i" = "--profile-add-variables" ]; then
	echo -e "${YELLOW}-- adding enviroment variables to ~/.profile...${NC}"
	echo export PS2DEV=/usr/local/ps2dev>>~/.profile
	echo export PS2SDK=\$PS2DEV/ps2sdk>>~/.profile
	echo export GSKIT=\$PS2DEV/gsKit>>~/.profile
	echo export PATH=\$PATH:\$PS2DEV/bin:\$PS2DEV/ee/bin:\$PS2DEV/iop/bin:\$PS2DEV/dvp/bin:\$PS2SDK/bin>>~/.profile
	echo -e "${YELLOW}-- reloading profile with contents of ~/.profile...${NC}"
	source ~/.profile
  fi
done

echo -e "${YELLOW}-- Checking enviroment variables...${NC}"
if [ -z ${PS2DEV+x} ]; then 
  echo -e "${RED}- PS2DEV is not set${NC}"
  exit -1
else
  echo -e "${GREEN}- PS2DEV is set to '$PS2DEV'${NC}"
fi

if [ -z ${PS2SDK+x} ]; then
  echo -e "${RED}- PS2SDK is not set${NC}"
  exit -1
else 
  echo -e "${GREEN}- PS2SDK is set to '$PS2SDK'${NC}"
fi

if [ -z ${GSKIT+x} ]; then 
  echo -e "${RED}- GSKIT  is not set${NC}";
  exit -1
else 
  echo -e "${GREEN}- GSKIT  is set to '$GSKIT${NC}'"
fi

if [[ $PATH == *$PS2DEV* ]]; then
  echo -e "${GREEN}- PS2DEV variables seem to be included on PATH, double check by yourself!${NC}"
else
  echo -e "${RED}- Could not find any reference to PS2DEV variable on PATH variable${NC}"
  exit -2
fi

echo -e "${YELLOW}-- Cleaning target directory...${NC}"
sudo rm -rf $PS2DEV

echo -e "${YELLOW}-- Creating folder...${NC}"
sudo mkdir -p $PS2SDK && sudo chmod -R 777 $PS2DEV

echo -e "${YELLOW}-- Cloning PS2DEV${NC}"
cd $PS2DEV && git clone https://github.com/ps2dev/ps2dev.git

if [ "$PS2DEVTAG" == "MASTER" ]; then
    echo -e "${YELLOW}-- latest SDK will be built...${NC}"
else
    echo -e "${YELLOW}-- PS2DEV:${BLUE}${PS2DEVTAG}${YELLOW} will be built${NC}"
	git switch $PS2DEVTAG
fi

echo -e "${YELLOW}-- Launching Build Script...${NC}"
sleep 5
cd ps2dev && ./build-all.sh
echo -e "${GREEN}-- EXECUTION FINISHED!${NC}"
echo -e "${YELLOW}TEST IF SDK WORKS BY COMPILING Latest wLaunchELF or OPL${NC}"
