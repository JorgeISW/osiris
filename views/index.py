import bd_connector


def index_view(app):
    template = 'index.html'
    context = {}

    with bd_connector.connect(app).cursor() as cur:
        cur.execute("SELECT organismo FROM organismos")
        organismos = cur.fetchall()
        context['organismos'] = organismos

    return template, context
