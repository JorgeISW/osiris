import random
from flask import Flask, render_template
from views.index import index_view
from views.organism import organism_view
from views.destinations import destinations_view
from views.itinerary import itinerary_view
#from views.travel import travel_view
from views.passport import passport_view


app = Flask(__name__)


@app.route('/')
@app.route('/<int:main_planet>')
def index(main_planet=0):
    template, context = index_view(app, main_planet)
    return render_template(template, **context)

@app.route('/organism')
def organism():
    template, context = organism_view(app)
    return render_template(template, **context)


@app.route('/destinations')
@app.route('/destinations/<int:planet_id>')
def destinations(planet_id=0):
    template, context = destinations_view(app, planet_id)
    return render_template(template, **context)


@app.route('/itinerary')
def itinerary():
    template, context = itinerary_view(app)
    return render_template(template, **context)
"""
@app.route('/travel/<int:id_specie>')
def travel(id_specie):
    template, context = travel_view(app,id_specie)
    return render_template(template, **context)
"""
@app.route('/passport/<int:id_spece>')
def passport(id_spece):
    template, context = passport_view(app, id_spece)
    rand = random.randint(456787654567, 987678987898)
    return render_template(template, rand=rand, **context)


if __name__ == '__main__':
    app.run(debug=True)

