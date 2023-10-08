import bd_connector


def organism_view(app):
    template = 'organism.html'
    context = {}

    with bd_connector.connect(app).cursor() as cur:
        cur.execute("SELECT organism FROM organism")
        organismos = cur.fetchall()
        context['organismos'] = organismos

    return template, context
