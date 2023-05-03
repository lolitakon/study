#!/bin/bash
read -p “请输入你的生日月日（纯数字）” targetTime
read -p "您今年生日是否已过，过了请输入1，没过请输入0" hasPassed
nowY=`date +%y`
if [ hasPassed = "1" ]; then
	targetTime= $[ $nowY + 1 ]$targetTime
else
	targetTime=$nowY$targetTime
fi
target=`date -d $targetTime +%s`
now=`date +%s`
result=$[ $target - $now ]
result=`date -d $result +%d`
