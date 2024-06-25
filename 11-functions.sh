#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "please run this script with root access"
    exit 1
else
    echo "you are super user"
fi

validate(){
    echo "exit status: $1"
    echo "what are you doing: $2"
}

dnf install mysql -y
validate $? "installing mysql"

dnf install git -y
validate $? "installing git"