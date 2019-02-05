#!/bin/bash
sudo cp /home/ubuntu/scalable-ubuntu-flask-gunicorn-nginx/nginx/nginx_app01.conf /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/nginx_app01.conf /etc/nginx/sites-enabled
sudo systemctl restart nginx
