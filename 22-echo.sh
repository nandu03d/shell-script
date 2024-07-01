#!/bin/bash
timeStamp=$(date +%F-%H-%M-%S)
scriptName=$(echo $0 | cut -d "." -f1)
logFile=/tmp/$scriptName-$timeStamp.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
# validate(){
#     if [ $1 -ne 0 ]
#     then
#         echo -e "$2...$R FAILURE $N"
#         exit 1
#     else
#         echo -e "$2...$G SUCCESS $N"
#     fi
# }
# echo -e "$G hi" &>>$logFile
# validate $? "status is"

# ech -e "$R hello" &>>$logFile
# validate $? "status is"

echo "hi" &>>$logFile
if [ $? -ne 0 ]
then
    echo -e "$R yes" &>>$logFile
    exit 1
else
    echo -e "$G no" &>>$logFile
fi

sudo dnf install mysqlll -y
if [ $? -ne 0 ]
then
    echo -e "$R installation of mysql is FAILURE" &>>$logFile
    exit 1
else
    echo -e "$G installation of mysql is SUCCESS" &>>$logFile
fi