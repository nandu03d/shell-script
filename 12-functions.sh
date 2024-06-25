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
    if [ $1 -ne 0 ]
    then
        echo "$2...FAILURE"
    else
        echo "$2...SUCCESS"
    fi
}

dnf install mysql -y
validate $? "installing mysql"

dnf install git -y
validate $? "installing git"