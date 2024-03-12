#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: please run this script with root access"
    exit 1
else
    echo "your root user"
fi  


yum install mysql -y

if [ $? -ne 0 ]
then
    echo "ERROR:: install my sql failed"
    exit 1
else
    echo "installing my sql sucess"  
fi      