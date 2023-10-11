import bd_connector

def travel_view(app,id_specie):
    template = 'travel.html'
    context = {}

    with bd_connector.connect(app).cursor() as cur:
        cur.execute("SELECT * FROM planetaryinfo")
        planetas = cur.fetchall()
        context['planetaryinfo'] = planetas
        
        cur.execute(f"SELECT planeta FROM matches WHERE organismo = {id_specie}")
        matches = cur.fetchall()
        matches = list(map(lambda x: x[0], matches))
        context['matches'] = matches
        print(matches)

    return template, context  