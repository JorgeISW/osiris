import bd_connector


def destinations_view(app, planet_id):
    template = 'destinations.html'
    context = {}

    with bd_connector.connect(app).cursor() as cur:
        cur.execute(f"SELECT * FROM infotravel where ID = {planet_id}")
        planeta = cur.fetchall()
        context['planeta'] = planeta[0] if planeta else 0

    return template, context
