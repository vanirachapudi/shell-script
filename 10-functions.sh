#!/bin/bash

ID=$(id -u)

VALIDATE(){

    if [ $? -ne 0 ]
    then
        echo "ERROR:: install my  failed"
        exit 1
    else
        echo "installing my  sucess"  
    fi 

    }

if [ $ID -ne 0 ]
then
    echo "ERROR:: please run this script with root access"
    exit 1
else
    echo "your root user"
fi  


yum install mysql -y

VALIDATE

yum install git -y

VALIDATE