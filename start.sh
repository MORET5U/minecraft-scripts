#!/bin/sh

screen -d -m -S minecraft java -Xms2G -Xmx3G -XX:+UseConcMarkSweepGC -jar paper.jar
