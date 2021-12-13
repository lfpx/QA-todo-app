#!/bin/bash
# echo '# Exporting environment variables'
# export CREATE_SCHEMA=true
# export DATABASE_URI
echo "DATABASE_URI=${DATABASE_URI}"

echo '# Activating virtualenv .env'
source .venv/bin/activate

echo '# Installing testing modules from tests/requirements.txt'
python3 -m pip install -r tests/requirements.txt

echo '# Running pyTest'
python3 -m pytest \
  --cov=application \
  --cov-report term-missing \
  --junitxml=test-reports/unit-tests.xml \
  --cov-report xml:test-reports/coverage.xml

echo '# Deactivating virtualenv .env'
deactivate