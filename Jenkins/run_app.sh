#!/bin/bash
echo '# Activating virtualenv .env'
source .venv/bin/activate

echo '# Running pyTest'
python3 app.py

echo '# Deactivating virtualenv .env'
deactivate