#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
y="\e[33m"
N="\e[0m"
LOGFILE="/temp/$0-$TIMESTAMP.log"

VALIDATE(){

    if [ $1 -ne 0 ]
    then
        echo  -e "ERROR:: $2 ... $R FAILED $N"
        exit 1
    else
        echo  -e "$2 .....  $R SUCCESS $N"  
    fi 

    }

if [ $ID -ne 0 ]
then
    echo -e  "$R ERROR:: please run this script with root access $N"
    exit 1
else
    echo "your root user"
fi  


yum install mysql -y  &>> $LOGFILE

VALIDATE $? "installing mysql"

yum install git -y   &>> $LOGFILE

VALIDATE  $? "installing git"
