from flask import Flask, render_template
from views.index import index_view
from views.organism import organism_view
from views.destinations import destinations_view
from views.itinerary import itinerary_view
from views.travel import travel_view

import bd_connector


app = Flask(__name__)
#db_conn = bd_connector.connect(app)
 

@app.route('/')
def index():
    template, context = index_view(app)
    return render_template(template, **context)

@app.route('/organism')
def organism():
    template, context = organism_view(app)
    return render_template(template, **context)


@app.route('/destinations')
def destinations():
    template, context = destinations_view(app)
    return render_template(template, **context)


@app.route('/itinerary')
def itinerary():
    template, context = itinerary_view(app)
    return render_template(template, **context)

@app.route('/travel/<int:id_specie>')
def travel(id_specie):
    template, context = travel_view(app,id_specie)
    return render_template(template, **context)

if __name__ == '__main__':
    app.run(debug=True)

