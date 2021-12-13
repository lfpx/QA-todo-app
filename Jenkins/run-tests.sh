echo '# Activating virtualenv .env'
source .venv/bin/activate

echo '# Installing modules from requirements.txt'
python3 -m pip install -r requirements.txt

echo '# Running pyTest'
python3 -m pytest \
  --cov=application \
  --cov-report term-missing \
  --junitxml=test-reports/unit-tests.xml \
  --cov-report xml:test-reports/coverage.xml

echo '# Deactivating virtualenv .env'
deactivate