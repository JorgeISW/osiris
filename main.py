import random
from flask import Flask, render_template
from views.index import index_view
from views.organism import organism_view
from views.destinations import destinations_view
from views.itinerary import itinerary_view


import bd_connector


app = Flask(__name__)
#db_conn = bd_connector.connect(app)
 


@app.route('/passport')
def passport():
    age = "26 yr"
    life = "70 yr"
    name = "Fulano"
    sc_name = "Homosapiens sapiens"
    weight = "70 kg"
    liq = "60 %"
    temp = "298 K"
    press = "1 atm"
    hab = "Terrestrial"
    resp = "Aerobica"
    description="""
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget ligula eu arcu tincidunt molestie. Integer posuere eros sed lorem iaculis placerat. Nunc ullamcorper augue metus, vitae fermentum justo hendrerit nec. Aliquam erat volutpat. Fusce eu justo at neque viverra fermentum ut at sapien. Duis malesuada venenatis urna, eu volutpat urna sagittis vel. In tempor efficitur tortor, eget dignissim nunc eleifend vitae. Nam efficitur lorem nulla, et pellentesque diam suscipit a. Integer consequat sem non ligula placerat tempor. Aenean porta libero pulvinar sem condimentum tincidunt. Sed vel sapien sed nisi aliquet venenatis ac eget dolor. Proin porttitor urna odio, non viverra magna congue et. Curabitur vitae ex volutpat, euismod nibh et, efficitur tortor. Donec enim elit, cursus a efficitur in, suscipit at turpis. Nullam convallis, nisi quis pulvinar faucibus, libero libero aliquet magna, eu dictum nisi ipsum ac ante.
    """
    rand = random.randint(456787654567,987678987898);
    return render_template('passport.html', age=age, life=life, name=name, sc_name=sc_name, weight=weight,liq=liq,temp=temp,press=press,hab=hab,resp=resp,rand=rand, description=description)

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


if __name__ == '__main__':
    app.run(debug=True)

