#!/bin/bash

echo "Starting Flask Application"

cd /home/ubuntu/python-app

pip3 install -r requirements.txt

nohup python3 app.py > app.log 2>&1 &
