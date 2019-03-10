#!/bin/bash

docker logs mysql-django_web_db_1 2>&1 | grep GENERATED
