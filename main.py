from flask import Flask, render_template
from views.index import index_view
from views.organism import organism_view
from views.destinations import destinations_view
from views.itinerary import itinerary_view

import bd_connector


app = Flask(__name__)
db_conn = bd_connector.connect(app)


@app.route('/')
def index():
    template, context = index_view(db_conn)
    return render_template(template, **context)


@app.route('/organism')
def organism():
    template, context = organism_view(db_conn)
    return render_template(template, **context)


@app.route('/destinations')
def destinations():
    template, context = destinations_view(db_conn)
    return render_template(template, **context)


@app.route('/itinerary')
def itinerary():
    template, context = itinerary_view(db_conn)
    return render_template(template, **context)


if __name__ == '__main__':
    app.run(debug=True)

