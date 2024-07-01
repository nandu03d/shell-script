#!/bin/bash
timeStamp=$(date +%F-%H-%M-%S)
scriptName=$(echo $0 | cut -d "." -f1)
logFile=/tmp/$scriptName-$timeStamp.log
echo -e "\e[32m hi" 1>>$logFile
ech -e "\e[31m hello" 2>>$logFile
echo -e "\e[32m bye" 1>>$logFile