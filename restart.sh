#!/bin/sh

screen -S minecraft -X stuff "say Server rebooting in 1 minute."
screen -S minecraft -X eval "stuff \015"
sleep 30

screen -S minecraft -X stuff "say Server rebooting in 30 seconds."
screen -S minecraft -X eval "stuff \015"
sleep 10

screen -S minecraft -X stuff "say Server rebooting in 20 seconds."
screen -S minecraft -X eval "stuff \015"
sleep 10

screen -S minecraft -X stuff "say Server rebooting in 10 seconds."
screen -S minecraft -X eval "stuff \015"
sleep 5

screen -S minecraft -X stuff "say Server rebooting in 5 seconds."
screen -S minecraft -X eval "stuff \015"
sleep 5

screen -S minecraft -X stuff "kick @a Rebooting. Please reconnect in one minute."
screen -S minecraft -X eval "stuff \015"
sleep 1

screen -S minecraft -X stuff "save-all"
screen -S minecraft -X eval "stuff \015"

sleep 20

screen -S minecraft -X stuff "stop"
screen -S minecraft -X eval "stuff \015"
sleep 10

cd /home/minecraft/
./start.sh
