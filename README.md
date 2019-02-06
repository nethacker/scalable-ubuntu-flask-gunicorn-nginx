# scalable-ubuntu-flask-gunicorn-nginx

## Description:

This solution provides scaffolding for a scalable [Python](https://www.python.org/) [Flask](http://flask.pocoo.org/) web application on [Ubuntu 18.04](https://www.ubuntu.com/) using [Gunicorn](https://gunicorn.org/) and [NGINX](http://nginx.org/). The web application also leverages [Virtualenv](https://virtualenv.pypa.io/en/latest/) to leverage isolated Python environments.

## Setup and deployment:

Following the below steps you will have a "Hello World" web application which leverages Flask a microframework for Python and Gunicorn acting as a webserver with NGINX serving as a reverse proxy.

## Requirement:

* Ubuntu 18.04 server
* A user named ubuntu on the Ubuntu Server with sudo privileges

## Setup

* SSH onto your server and clone the repo into your /home/ubuntu directory
* Go into the setup directory and run the setup.sh script

```bash
git clone https://github.com/nethacker/scalable-ubuntu-flask-gunicorn-nginx.git

cd scalable-ubuntu-flask-gunicorn-nginx/setup

bash setup.sh
```
