#!/bin/sh

screen -S minecraft -X stuff "minecraft:kick @a Restart"
screen -S minecraft -X eval "stuff \015"
sleep 1

screen -S minecraft -X stuff "save-all"
screen -S minecraft -X eval "stuff \015"
sleep 5

screen -S minecraft -X stuff "stop"
screen -S minecraft -X eval "stuff \015"
sleep 10
