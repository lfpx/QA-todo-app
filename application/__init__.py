from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from os import getenv

app = Flask(__name__)

# Set the db in-memory
# export DATABASE_URI=sqlite:///
app.config['SQLALCHEMY_DATABASE_URI'] = getenv("DATABASE_URI")

db = SQLAlchemy(app)

from application import routes