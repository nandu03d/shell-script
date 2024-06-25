#!/bin/bash
userid=$(id -u)
timeStamp=$(date +%F-%H-%M-%S)
scriptName=$(echo $0 | cut -d "." -f1)
logFile=/tmp/$scriptName-$timeStamp.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
if [ $userid -ne 0 ]
then
    echo "please run this script with root access"
    exit 1
else
    echo "you are super user"
fi

validate(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2...$R FAILURE"
        exit 1
    else
        echo -e "$2...$G SUCCESS"
    fi
}

dnf install mysql -y &>>$logFile
validate $? "installing mysql"

dnf install git -y &>>$logFile
validate $? "installing git"

dnf install dockerrr -y &>>$logFile
validate $? "installing docker"