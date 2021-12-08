from application import db

# represents the tasks table in a database
class Tasks(db.Model):
    id = db.Column(db.Integer, nullable=False, primary_key=True)
    description = db.Column(db.String(255), nullable=False)
    completed = db.Column(db.Boolean, nullable=False, default=False)
