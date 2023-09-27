#!/bin/bash

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

PS2DEVTAG="MASTER"

echo -e "\t\t PS2DEV enviroment installation script by Matias Israelson (AKA: El_isra)\n\n"

# Add the following stuff to your enviroment variable, change the path of $PS2DEV to alter the location of the SDK, the value written is the default and recommended one
# export PS2DEV=/usr/local/ps2dev
# export PS2SDK=$PS2DEV/ps2sdk
# export GSKIT=$PS2DEV/gsKit
# export PATH=$PATH:$PS2DEV/bin:$PS2DEV/ee/bin:$PS2DEV/iop/bin:$PS2DEV/dvp/bin:$PS2SDK/bin


# WSL1 Check
if [[ $(grep Microsoft /proc/version) ]]; then
echo -e "${YELLOW}WARNING: WSL Usage detected! Please read the following warning! ${NC}"
echo -e "YOU NEED TO INSTALL CMAKE WITH ${BLUE}brew.sh${NC}"
echo -e "${RED}DONT INSTALL IT WITH APT${NC}, IT WILL INSTALL OUTDATED CMAKE THAT WILL MAKE COMPILATION FAIL ON A LATE STAGE OF THE BUILDING PROCESS (PS2SDK-Ports more specifically)."
echo -e "wasting precious time!!\n\n"
echo -e "Recommended CMake version is ${RED}3.24.*${NC} or newer"
read -rsn1 -p"Press any key to continue... ";echo;echo
fi

# WSL2 Check
if sudo test -f /proc/sys/fs/binfmt_misc/WSLInterop; then
echo -e "${YELLOW}WARNING: WSL Usage detected! Please read the following warning! ${NC}"
echo -e "YOU NEED TO INSTALL CMAKE WITH ${BLUE}brew.sh${NC}"
echo -e "${RED}DONT INSTALL IT WITH APT${NC}, IT WILL INSTALL OUTDATED CMAKE THAT WILL MAKE COMPILATION FAIL ON A LATE STAGE OF THE BUILDING PROCESS (PS2SDK-Ports more specifically)."
echo -e "wasting precious time!!\n\n"
echo -e "Recommended CMake version is ${RED}3.24.*${NC} or newer"
read -rsn1 -p"Press any key to continue...";echo;echo
fi

for i in $@
do 
  if [ "$i" = "--help" ]; then
	echo "Available switches:"
	echo -e "\t${YELLOW}[--install-apt-dependencies]${NC}: Attempt to install the SDK dependencies via apt (CMAKE is also needed, but excluded from this switch)"
	echo -e "\t${YELLOW}[--profile-add-variables]${NC}   : Writes the needed enviroment variables to ~/.profile and reloads profile"
  echo -e "\t${YELLOW}[--install-ps2eth]${NC}          : Installs optional PS2 Ethernet library"
	echo -e "\t${YELLOW}[--sdk-tag=${BLUE}TAG${YELLOW}]${NC}             : Use ${BLUE}TAG${NC} to switch SDK tag, building the specified version of PS2SDK instead of latest"
	exit -0
  fi

  if [ "$i" = "--install-apt-dependencies" ]; then
	echo -e "${YELLOW}-- Installing apt dependencies...${NC}"
	sudo apt update
	sudo apt upgrade
    
    sudo apt-get -y install build-essential
    sudo apt-get -y install git
    sudo apt-get -y install mercurial
    sudo apt-get -y install libc6-dev
    sudo apt-get -y install zlib1g
    sudo apt-get -y install zlib1g-dev
    sudo apt-get -y install libucl1
    sudo apt-get -y install libucl-dev
    sudo apt-get -y install autoconf
    sudo apt-get -y install gcc
    sudo apt-get -y install clang
    sudo apt-get -y install make
    sudo apt-get -y install patch
    sudo apt-get -y install texinfo 
    sudo apt-get -y install flex 
    sudo apt-get -y install bison
    sudo apt-get -y install gettext
    sudo apt-get -y install wget
    sudo apt-get -y install libgsl-dev
    sudo apt-get -y install libgslcblas0
    sudo apt-get -y install libgsl23
    sudo apt-get -y install gsl-bin
    sudo apt-get -y install libgmp-dev
    sudo apt-get -y install libmpfr-doc
    sudo apt-get -y install libgmp3-dev
    sudo apt-get -y install libmpfr-dev
    sudo apt-get -y install libmpc-dev
    sudo apt-get -y install mpc
    sudo apt-get -y install zip
    sudo apt-get -y install unzip

    sudo apt-get install -y libfreetype-dev
    sudo apt-get install -y libfreetype6
    sudo apt-get install -y libfreetype6-dbgsym
    sudo apt-get install -y libfreetype6-dev
    sudo apt-get install -y libpng-dev
    sudo apt-get install -y libpng12-0
    sudo apt-get install -y libmad0
    sudo apt-get install -y libmad0-dev
    sudo apt install -y libmad-ocaml
    sudo apt install -y libmad-ocaml-dev

    sudo apt-get -y install ucl
    sudo apt-get -y install upx-ucl
    echo -e "${GREEN}-- Dependencies installed!${NC}"
    exit -0
  fi

  if [[ "$i" = "--sdk-tag=v"* ]]; then
	echo -e "${YELLOW}-- Specific SDK tag requested${NC}"
	PS2DEVTAG="${i#*=}"
	echo -e "PS2SDK will be built on version ${BLUE}${PS2DEVTAG}${NC}"
  fi
  
  if [ "$i" = "--profile-add-variables" ]; then
	echo -e "${YELLOW}-- Adding enviroment variables to ~/.profile...${NC}"
	echo export PS2DEV=/usr/local/ps2dev>>~/.profile
	echo export PS2SDK=\$PS2DEV/ps2sdk>>~/.profile
	echo export GSKIT=\$PS2DEV/gsKit>>~/.profile
	echo export PATH=\$PATH:\$PS2DEV/bin:\$PS2DEV/ee/bin:\$PS2DEV/iop/bin:\$PS2DEV/dvp/bin:\$PS2SDK/bin>>~/.profile
	echo -e "${YELLOW}-- reloading profile with contents of ~/.profile...${NC}"
	source ~/.profile
  echo -e "${GREEN}-- Environment variables added!${NC}"
  exit -0
  fi

  if [ "$i" = "--install-ps2eth"]; then
  echo -e "${YELLOW}-- Installing PS2ETH...${NC}"
  cd $HOME
  echo -e "${YELLOW}-- Cleaning target directory...${NC}"
  sudo rm -rf ps2eth
  echo -e "${YELLOW}-- Cloning PS2ETH...${NC}"
  git clone https://github.com/ps2dev/ps2eth.git ps2eth
  echo -e "${YELLOW}-- Building PS2ETH...${NC}"
  sleep 5
  cd ps2eth
  make clean all install
  cd $HOME
  echo -e "${GREEN}-- PS2ETH installation finished!${NC}"
  exit -0
  fi

done

echo -e "${YELLOW}-- Checking enviroment variables...${NC}"
if [ -z ${PS2DEV+x} ]; then 
  echo -e "${RED}- PS2DEV is not set${NC}"
  echo -e "you can fix this by running this script again and passing the following argument: ${YELLOW}--profile-add-variables${NC}"
  exit -1
else
  echo -e "${GREEN}- PS2DEV is set to '$PS2DEV'${NC}"
fi

if [ -z ${PS2SDK+x} ]; then
  echo -e "${RED}- PS2SDK is not set${NC}"
  echo -e "you can fix this by running this script again and passing the following argument: ${YELLOW}--profile-add-variables${NC}"
  exit -1
else 
  echo -e "${GREEN}- PS2SDK is set to '$PS2SDK'${NC}"
fi

if [ -z ${GSKIT+x} ]; then 
  echo -e "${RED}- GSKIT  is not set${NC}";
  echo -e "you can fix this by running this script again and passing the following argument ${YELLOW}--profile-add-variables${NC}"
  exit -1
else 
  echo -e "${GREEN}- GSKIT  is set to '$GSKIT${NC}'"
fi

if [[ $PATH == *$PS2DEV* ]]; then
  echo -e "${GREEN}- PS2DEV variables seem to be included on PATH, double check by yourself!${NC}"
else
  echo -e "${RED}- Could not find any reference to PS2DEV variable on PATH variable${NC}"
  echo -e "You can fix this by running this script again and passing the following argument: ${YELLOW}--profile-add-variables${NC}"
  exit -2
fi

# SDK Install
echo -e "${YELLOW}This script will now install the PS2SDK.${NC}"
echo -e "Please ensure the dependencies are installed first."
echo -e "They can be installed by running this script again and passing the following argument: ${YELLOW}--install-apt-dependencies${NC}"
read -rn1 -p "$(echo -e "${YELLOW}Enter \"c\" to cancel, or enter any other key to continue...${NC} ")";echo

if [[ $REPLY == "c" ]]; then
  echo -e "${YELLOW}SDK install cancelled.${NC}"
  exit -0
fi

echo
echo -e "${YELLOW}-- Cleaning target directory...${NC}"
sudo rm -rf $PS2DEV

echo -e "${YELLOW}-- Creating folder...${NC}"
sudo mkdir -p $PS2SDK && sudo chmod -R 777 $PS2DEV

echo -e "${YELLOW}-- Cloning PS2DEV${NC}"
cd $PS2DEV && git clone https://github.com/ps2dev/ps2dev.git

if [ "$PS2DEVTAG" == "MASTER" ]; then
    echo -e "${YELLOW}-- Latest SDK will be built...${NC}"
else
    echo -e "${YELLOW}-- PS2DEV:${BLUE}${PS2DEVTAG}${YELLOW} will be built${NC}"
	git switch $PS2DEVTAG
fi

echo -e "${YELLOW}-- Launching Build Script...${NC}"
sleep 5
cd ps2dev && ./build-all.sh
echo -e "${GREEN}-- EXECUTION FINISHED!${NC}"
echo -e "${YELLOW}TEST IF SDK WORKS BY COMPILING Latest wLaunchELF or OPL${NC}"

echo -e "${BLUE}Suggested commands for compiling:${NC}";echo
echo -e "cd \$HOME && rm -rf Open-PS2-Loader && git clone https://github.com/ps2homebrew/Open-PS2-Loader.git Open-PS2-Loader && cd Open-PS2-Loader && make clean && make IGS=1 PADEMU=1"
echo;echo
echo -e "cd \$HOME && rm -rf wLaunchELF && git clone https://github.com/ps2homebrew/wLaunchELF.git && cd wLaunchELF && make rebuild"
echo
echo -e "${BLUE}You can also install the optional PS2ETH library by running this script again and passing the following argument: ${YELLOW}--install-ps2eth${NC}"
