#!/bin/bash
echo '# Running container'
docker run --rm -d -p 5000:5000 --name myapp -e DATABASE_URI="${DATABASE_URI}" -e CREATE_SCHEMA="${CREATE_SCHEMA}" todoapp