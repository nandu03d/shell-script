#!/bin/bash
userid=$(id -u)
timeStamp=$(date +%F-%H-%M-%S)
scriptName=$(echo $0 | cut -d "." -f1)
logFile=/tmp/$scriptName-$timeStamp.log
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
        echo "$2...FAILURE"
        exit 1
    else
        echo "$2...SUCCESS"
    fi
}

dnf install mysql -y &>>$logFile
validate $? "installing mysql"

dnf install git -y &>>$logFile
validate $? "installing git"