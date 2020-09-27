#!/bin/bash
cd "$(dirname "$0")"

YELLOW="\033[1;33m"
GREEN="\033[0;32m"
RED="\033[1;31m"
NC="\033[0m"

if [ "$#" -eq "0" ]; then
	printf "${RED}[ERROR] ${YELLOW}You have to pass a value for -Xmx flag\n"
	exit 1
fi

XMX_VALUE=$1
CORE="paper.jar"

if [ ! -f "$CORE" ]; then
	printf "${RED}[ERROR] ${YELLOW}${CORE} was not found in current directory\n"
	exit 1
fi

AIKAR_FLAGS="-XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true"

printf "\n{GREEN}Your Minecraft server is starting\n{YELLOW}Use {NC}screen -R minecraft {YELLOW} to open the console.\n\n";

screen -d -m -S minecraft java -Xmx${XMX_VALUE} ${AIKAR_FLAGS} -jar ${CORE} nogui

