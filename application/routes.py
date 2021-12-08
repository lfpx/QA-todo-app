from application import app, db
from application.models import Tasks
from application.forms import TaskForm
from flask import render_template, request, redirect, url_for

@app.route('/')
def home():
    all_tasks = Tasks.query.all()
    return render_template("index.html", title="Home", all_tasks=all_tasks)

@app.route('/create-task', methods=['GET','POST'])
def create_task():
    form = TaskForm()

    if request.method=='POST':
        new_task = Tasks(description=form.description.data)
        db.session.add(new_task)
        db.session.commit()
        return redirect(url_for("home"))

    return render_template("create_task.html", title="Add a Task", form=form)