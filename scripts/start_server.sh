#!/bin/bash

cd /home/ubuntu/python-app

# Install dependencies just in case
pip3 install -r requirements.txt

# Start Flask app in background
nohup python3 app.py > app.log 2>&1 &
