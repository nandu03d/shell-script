#!/bin/bash
timeStamp=$(date +%F-%H-%M-%S)
scriptName=$(echo $0 | cut -d "." -f1)
logFile=/tmp/$scriptName-$timeStamp.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
echo -e "$G hi $N" 1>>$logFile
ech -e "$R hello $N" 2>>$logFile
exit 1
echo -e "$G\e[32m bye $N" 1>>$logFile