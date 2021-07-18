#!/bin/bash
sudo apt install python3
sudo apt install pip
pip install django
echo "
██████╗░░░░░░██╗░█████╗░███╗░░██╗░██████╗░░█████╗░
██╔══██╗░░░░░██║██╔══██╗████╗░██║██╔════╝░██╔══██╗
██║░░██║░░░░░██║███████║██╔██╗██║██║░░██╗░██║░░██║
██║░░██║██╗░░██║██╔══██║██║╚████║██║░░╚██╗██║░░██║
██████╔╝╚█████╔╝██║░░██║██║░╚███║╚██████╔╝╚█████╔╝
╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝░░╚══╝░╚═════╝░░╚════╝░
Django starter by SANKALPA for linux distros"
echo 'Do you want to create the django directory in the same directory or in a custom path?
1. Same directory
2. Custom path'
read path_check
if [ $path_check -eq 2 ]
then
    echo 'Enter the path where you want to create the django directory like:(/path/to/folder)'
    read pathname
    cd
    cd $pathname
else
echo OK Starting to create the django directory right here!
fi
echo What do you want to name your project?
read projectname
echo What do you want to name your app?
read appname
django-admin startproject $projectname
cd $projectname
django-admin startapp $appname
python3 manage.py makemigrations
python3 manage.py migrate
mkdir templates
mkdir static
echo Lets move forward to creating superuser with administrative rights. You can hit enter directly without typing email if you don\'t want to.
python3 manage.py createsuperuser
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver
# Coded by Sankalpa
