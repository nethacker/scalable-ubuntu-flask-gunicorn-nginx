#!/bin/bash

# ubuntu global setup

sudo apt update
#sudo apt -y upgrade
sudo apt -y install ntpdate
sudo ntpdate pool.ntp.org
sudo apt -y install ntp
sudo apt -y install build-essential libpq-dev libssl-dev openssl libffi-dev zlib1g-dev
sudo apt -y install python3-pip python3-dev
sudo apt -y install nginx
sudo pip3 install virtualenvwrapper

# ubuntu user setup

echo '# default location of virtual environment directories' >> ~/.bashrc
echo 'export WORKON_HOME=$HOME/.virtualenvs' >> ~/.bashrc
echo '# default python version to use with virtualenv' >> ~/.bashrc
echo 'export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3' >> ~/.bashrc
echo "export VIRTUALENVWRAPPER_VIRTUALENV_ARGS=' -p /usr/bin/python3 '" >> ~/.bashrc
echo 'source `which virtualenvwrapper.sh`' >> ~/.bashrc
source ~/.bashrc

# app dependencies setup

mkdir /home/ubuntu/flask_apps
cd /home/ubuntu/flask_apps
virtualenv app01_env
source app01_env/bin/activate
pip install gunicorn flask
pip install setproctitle
cp /home/ubuntu/scalable-ubuntu-flask-gunicorn-nginx/flask_app/app01.py /home/ubuntu/flask_apps/app01_env/
cp /home/ubuntu/scalable-ubuntu-flask-gunicorn-nginx/flask_app/wsgi.py /home/ubuntu/flask_apps/app01_env/
cp /home/ubuntu/scalable-ubuntu-flask-gunicorn-nginx/gunicorn/gunicorn_config.py /home/ubuntu/flask_apps/app01_env/
deactivate

# systemd setup

sudo cp /home/ubuntu/scalable-ubuntu-flask-gunicorn-nginx/systemd/app01.service  /etc/systemd/system/
sudo systemctl start app01
sudo systemctl enable app01.service

# nginx setup

sudo cp /home/ubuntu/scalable-ubuntu-flask-gunicorn-nginx/nginx/nginx_app01.conf /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/nginx_app01.conf /etc/nginx/sites-enabled
sudo systemctl restart nginx
