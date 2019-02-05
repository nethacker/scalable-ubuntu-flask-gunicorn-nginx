#!/bin/bash

mkdir /home/ubuntu/flask_apps
cd /home/ubuntu/flask_apps
virtualenv app01_env
source app01_env/bin/activate
pip install gunicorn flask
cp /home/ubuntu/scalable-ubuntu-flask-gunicorn-nginx/flask_app/app01.py /home/ubuntu/flask_apps/app01_env/
cp /home/ubuntu/scalable-ubuntu-flask-gunicorn-nginx/flask_app/wsgi.py /home/ubuntu/flask_apps/app01_env/
cp /home/ubuntu/scalable-ubuntu-flask-gunicorn-nginx/flask_app/gunicorn/gunicorn_config.py /home/ubuntu/flask_apps/app01_env/
deactivate
