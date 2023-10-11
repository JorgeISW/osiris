import bd_connector

def destinations_view(app,ID):
    template = 'destinations.html'
    context = {}

    with bd_connector.connect(app).cursor() as cur:
        cur.execute(f"SELECT infotravel.ID, infotravel.Nombre, infotravel.Distancia_desde_la_Tierra, infotravel.Tiempos_de_llegada, infotravel.recomendetions, planetaryinfo.img_name, planetaryinfo.Description FROM infotravel INNER JOIN planetaryinfo ON infotravel.ID = planetaryinfo.ID WHERE infotravel.ID={ID}")
        #cur.execute(f"SELECT * FROM infotravel ")
        planeta = cur.fetchall()
        planeta = planeta[0] if planeta else None
        context['planeta'] = planeta
        print(planeta)

    return template, context
