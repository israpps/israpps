#!/bin/bash

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

#add the following stuff to your enviroment variable, change the path of $PS2DEV to alter the location of the SDK, the value written is the default and recommended one
#export PS2DEV=/usr/local/ps2dev
#export PS2SDK=$PS2DEV/ps2sdk
#export GSKIT=$PS2DEV/gsKit
#export PATH=$PATH:$PS2DEV/bin:$PS2DEV/ee/bin:$PS2DEV/iop/bin:$PS2DEV/dvp/bin:$PS2SDK/bin

echo "IMPORTANT NOTE. IF USING WSL, YOU NEED TO INSTALL CMAKE WITH brew.sh."
echo -e "${YELLOW}DONT USE APT${NC}, IT WILL INSTALL OUTDATED CMAKE THAT ${YELLOW}WILL MAKE COMPILATION FAIL ON A LATE STAGE OF THE BUILDING PROCESS${NC} (PS2SDK-Ports more specifically)."
echo "wasting precious time"
echo "this script contains a sample of what variables you should add"

echo make sure to check the comments on this script, 
if [ -z ${PS2DEV+x} ]; then 
  echo -e "${RED}PS2DEV is not set${NC}"
  exit -1
else
  echo -e "${GREEN}PS2DEV is set to '$PS2DEV'${NC}"
fi

if [ -z ${PS2SDK+x} ]; then
  echo -e "${RED}PS2SDK is not set${NC}"
  exit -1
else 
  echo -e "${GREEN}PS2SDK is set to '$PS2SDK'${NC}"
fi

if [ -z ${GSKIT+x} ]; then 
  echo -e "${RED}GSKIT is not set${NC}";
  exit -1
else 
  echo -e "${GREEN}GSKIT is set to '$GSKIT${NC}'"
fi

if [[ $PATH == *$PS2DEV* ]]; then
  echo -e "${GREEN}PS2DEV variables seem to be included on PATH, double check by yourself!${NC}"
else
  echo -e "${RED}Could not find any reference to PS2DEV variable on PATH variable${NC}"
  exit -2
fi

echo -e "${YELLOW}Cleaning target directory...${NC}"
sudo rm -rf $PS2DEV

echo -e "${YELLOW}Creating folder...${NC}"
sudo mkdir -p $PS2SDK && sudo chmod -R 777 $PS2DEV

echo -e "${YELLOW}Cloning and PS2DEV${NC}"
cd $PS2DEV && git clone https://github.com/ps2dev/ps2dev.git

echo -e "${YELLOW}Launching Build Script...${NC}"
sleep 5
cd ps2dev && ./build-all.sh
echo -e "${GREEN}EXECUTION FINISHED!${NC}"
echo -e "${YELLOW}TEST IF SDK WORKS BY COMPILING Latest wLaunchELF or OPL${NC}"
