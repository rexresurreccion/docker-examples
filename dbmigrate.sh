#!/bin/bash

docker exec -it mysql-django_web_portal_1 python manage.py makemigrations
docker exec -it mysql-django_web_portal_1 python manage.py migrate
docker-compose restart
