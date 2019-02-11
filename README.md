# scalable-ubuntu-flask-gunicorn-nginx

## Description:

This solution provides scaffolding for a scalable [Python](https://www.python.org/) [Flask](http://flask.pocoo.org/) web application on [Ubuntu 18.04](https://www.ubuntu.com/) using [Gunicorn](https://gunicorn.org/) and [NGINX](http://nginx.org/). The web application also leverages [Virtualenv](https://virtualenv.pypa.io/en/latest/) to leverage isolated Python environments.

## Deployment:

By executing the setup.sh script (instructions below) you will have a "Hello World" web application which leverages Flask a microframework for Python and Gunicorn acting as a webserver with NGINX serving as a reverse proxy.

## Requirement:

* Ubuntu 18.04 server
* A user named ubuntu on the Ubuntu Server with sudo privileges

## Setup:

* SSH onto your server and clone the repo into your /home/ubuntu directory
* Go into the setup directory and run the setup.sh script

```bash
git clone https://github.com/nethacker/scalable-ubuntu-flask-gunicorn-nginx.git

cd scalable-ubuntu-flask-gunicorn-nginx/setup

bash setup.sh
```

## What is the setup.sh script doing?

Below are the general steps the setup.sh file is executing. Please see the actual setup.sh file in the setup directory for literal commands.

### Ubuntu global setup

* Updating ubuntu packages
* Installing ntpdate and updating time against pool.ntp.org
* Installing nptd to maintain time avoiding drift
* Installing Python3 dependencies to support virtualenv
* Installing NGINX

### Ubuntu user setup

* Updating .bashrc of the ubuntu user to support virtualenv for development

### App dependencies setup

* Creating a directory structure for our test application named app01
* Leverage virtualenv to install Python3 packages in a virtual environment.
* Install gunicorn for as a webserver, flask microframework, setproctitle for ps friendly name
* Copy test application app01 to appropriate location from repo hierarchy
* Copy test application app01 gunicorn webserver config to appropriate location from repo hierarchy

### Systemd setup

* Copy test application app01 systemd bootstrap config to appropriate location from repo hierarchy
* Start test application app01 using systemd
* Configure test application app01 to start after reboots

### NGINX Setup

* Copy test application app01 nginx config to appropriate location from repo hierarchy
* Delete default nginx config
* Enable nginx site and restart nginx
