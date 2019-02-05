#!/bin/bash

sudo cp ../systemd/app01.service  /etc/systemd/system/
sudo systemctl start app01
