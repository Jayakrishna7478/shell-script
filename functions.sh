#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2 ... FAILED"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi 
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
else
    echo "you are root user"
fi

yum install mysql -y

VALIDATE $? "installing MYSQL"

yum install git -y

VALIDATE $? "installing GIT"