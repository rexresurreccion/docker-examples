#!/bin/bash

uid=$(id -u)
gid=$(id -g)

mkdir -p ~/code/mysql
ls -lnd ~/code/
docker build -t web_portal .
docker run --rm --user $uid:$gid -v ~/code:/code web_portal django-admin startproject web_portal
echo "" >> ~/code/web_portal/web_portal/settings.py
echo "from localsettings import DATABASES, ALLOWED_HOSTS" >> ~/code/web_portal/web_portal/settings.py
cp ./localsettings.py ~/code/web_portal/web_portal/
chown -R $uid:$gid ~/code/

