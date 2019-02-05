#!/bin/bash

mkdir /home/ubuntu/flask_apps
cd /home/ubuntu/flask_apps
virtualenv app01_env
source app01_env/bin/activate
pip install gunicorn flask
deactivate
