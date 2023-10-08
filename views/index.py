import bd_connector


def index_view(app):
    template = 'index.html'
    context = {}

    with bd_connector.connect(app).cursor() as cur:
        cur.execute("SELECT * FROM planetas")
        planetas = cur.fetchall()
        context['planetas'] = planetas

    return template, context
