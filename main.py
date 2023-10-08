import random
from flask import Flask, render_template
from views.index import index_view
from views.organism import organism_view
from views.destinations import destinations_view
from views.itinerary import itinerary_view
from views.passport import passport_view


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
    destination="tierra"
    distance="0km"
    time="0hr"
    warning="""
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget ligula eu arcu tincidunt molestie. Integer posuere eros sed lorem iaculis placerat. Nunc ullamcorper augue metus, vitae fermentum justo hendrerit nec. Aliquam erat volutpat. Fusce eu justo at neque viverra fermentum ut at sapien.
    """
    resources="""
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget ligula eu arcu tincidunt molestie. Integer posuere eros sed lorem iaculis placerat. Nunc ullamcorper augue metus, vitae fermentum justo hendrerit nec. Aliquam erat volutpat. Fusce eu justo at neque viverra fermentum ut at sapien.
    """
    template, context = destinations_view(app)
    return render_template('destinations.html',destination=destination,distance=distance,time=time,warning=warning,resources=resources)


@app.route('/itinerary')
def itinerary():
    template, context = itinerary_view(app)
    return render_template(template, **context)


@app.route('/passport/<int:id_spece>')
def passport(id_spece):
    template, context = passport_view(app, id_spece)
    rand = random.randint(456787654567, 987678987898)
    return render_template(template, rand=rand, **context)


if __name__ == '__main__':
    app.run(debug=True)

