import bd_connector


def index_view(app, main_planet):
    template = 'index.html'
    context = {}

    with bd_connector.connect(app).cursor() as cur:
        cur.execute("SELECT * FROM planetaryinfo")
        planetas = cur.fetchall()
        context['planetas'] = planetas
        context['main_planet'] = planetas[main_planet]

        #organismos
        cur.execute("SELECT * FROM organism")
        organismos = cur.fetchall()
        context['organismos'] = organismos


    return template, context
