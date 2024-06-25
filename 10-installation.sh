#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "please run this script with root access"
else
    echo "you are super user"
fi
dnf install mysql -y
if [ $? -ne 0 ]
then
    echo "installation of mysql is FAILURE"
    exit 1
else
    echo "installation of mysql is SUCCESS"
fi