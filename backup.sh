#!/bin/bash
cd "$(dirname "$0")"

YELLOW="\033[1;33m"
GREEN="\033[0;32m"
RED="\033[1;31m"
NC="\033[0m"

WORLD=world/
WORLD_NETHER=world_nether/
WORLD_THE_END=world_the_end/

TO_EXECUTE=""
NOW=`date +"%d-%b-%Y_%H-%M-%S"`

if [ ! -d "$WORLD" ]; then
	printf "${YELLOW}Overworld directory doesn't exist, skipping...\n"
else
	TO_EXECUTE="${TO_EXECUTE} ${WORLD}"
	printf "${NC}Backing up overworld directory...\n"
fi



if [ ! -d "$WORLD_NETHER" ]; then
	printf "${YELLOW}Nether world directory doesn't exist, skipping...\n"
else
	TO_EXECUTE="${TO_EXECUTE} ${WORLD_NETHER}"
	printf "${NC}Backing up nether world directory...\n"
fi



if [ ! -d "$WORLD_THE_END" ]; then
	printf "${YELLOW}End world directory doesn't exist, skipping...\n"
else
	TO_EXECUTE="${TO_EXECUTE} ${WORLD_THE_END}"
	printf "${NC}Backing up the end world directory...\n"
fi


printf "\n${GREEN}Executing the backup command...${NC}\n\n"

tar cvzf ${NOW}.tar.gz ${TO_EXECUTE}

if [ -f "${NOW}.tar.gz" ]; then
	printf "\n${GREEN}Successfully created ${NOW}.tar.gz\n"
fi

