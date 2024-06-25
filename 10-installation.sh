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



# USERID=$(id -u)

# if [ $USERID -ne 0 ]
# then
#     echo "Please run this script with root access."
#     exit 1 # manually exit if error comes.
# else
#     echo "You are super user."
# fi

# dnf install mysql -y

# if [ $? -ne 0 ]
# then
#     echo "Installation of mysql...FAILURE"
#     exit 1
# else
#     echo "Installation of mysql...SUCCESS"
# fi