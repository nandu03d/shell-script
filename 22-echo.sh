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

validate(){
if [ $? -ne 0 ]
then
    echo -e "$R fail" &>>$logFile
    exit 1
else
    echo -e "$G success" &>>$logFile
fi
}
echo "hi" &>>$logFile
validate $? "status is"

ech "bye" &>>$logFile
validate $? "status is"

# echo "hi"
# if [ $? -ne 0 ]
# then
#     echo -e "$R fail" &>>$logFile
#     exit 1
# else
#     echo -e "$G success" &>>$logFile
# fi

# ech "bye"
# if [ $? -ne 0 ]
# then
#     echo -e "$R fail" &>>$logFile
#     exit 1
# else
#     echo -e "$G success" &>>$logFile
# fi