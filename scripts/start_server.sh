#!/bin/bash

echo "Starting Flask Application"

cd /home/ubuntu/python-app

# Install required system packages
sudo apt update
sudo apt install -y python3-pip python3-venv

# Create virtual environment if not exists
if [ ! -d "venv" ]; then
  python3 -m venv venv
fi

# Activate venv
source venv/bin/activate

# Install python dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Start Flask app
nohup python3 app.py > app.log 2>&1 &
