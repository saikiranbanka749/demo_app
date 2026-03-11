#!/bin/bash

cd /home/ubuntu/python-app

python3 -m venv venv

source venv/bin/activate

pip install --break-system-packages -r requirements.txt

pkill -f app.py || true

nohup python3 app.py > app.log 2>&1 &
