#!/bin/bash
echo '# Creating virtualenv .env'
python3 -m venv .venv

echo '# Activating virtualenv .env'
source .venv/bin/activate

echo '# Installing modules from requirements.txt'
python3 -m pip install -r requirements.txt