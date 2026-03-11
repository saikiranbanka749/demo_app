#!/bin/bash
set -e

APP_DIR=/home/ubuntu/python-app
cd $APP_DIR

# Clean up old virtual environment and log
rm -rf venv
rm -f app.log

# Make sure the ubuntu user owns the app folder
chown -R ubuntu:ubuntu $APP_DIR
chmod -R 775 $APP_DIR

# Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate

# Upgrade pip and install dependencies inside the venv
pip install --upgrade pip
pip install -r requirements.txt

# Stop any existing app instance
pkill -f app.py || true

# Start app in background with proper logging
nohup python3 app.py > app.log 2>&1 &
