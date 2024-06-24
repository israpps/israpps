# Import checked by El_isra. this script parses a IRX module source code checking for ocurrences of every importted
# function that was defined on imports.lst
# ensuring that you are not wasting binary size on functions that youre not using
RED='\033[1;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color
IMPORTS=$(grep -Eo "I_[a-zA-Z0-9_-]*" src/imports.lst | sed 's/^I_//')
#echo $IMPORTS

for a in $IMPORTS
do
    grep -r -q --include="*.c" "$a" "src/"
    if (($? == 1));
    then
        echo -e ${RED}-- IMPORT ${YELLOW}"$a"${RED} NOT FOUND IN C SOURCE${NC}
        x=1
    fi
done
