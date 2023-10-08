from flask import Flask, redirect, url_for, render_template
from datetime import datetime


app = Flask(__name__)


@app.context_processor
def date_now():
    return {
        'now': datetime.utcnow()
    }


@app.route('/')
def index():
    age = 26
    people = ['Jorge', 'Luis', 'Osvaldo', 'Ale']
    return render_template('index.html', age=age, people=people)


if __name__ == '__main__':
    app.run(debug=True)

