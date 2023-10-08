import bd_connector


def organism_view(app):
    template = 'organism.html'
    context = {}

    with bd_connector.connect(app).cursor() as cur:
<<<<<<< HEAD
        cur.execute("SELECT Organismo FROM organism	")
=======
        cur.execute("SELECT organism FROM organism")
>>>>>>> 9ac89541ce25e27f2a5698f56582d06ace592c91
        organismos = cur.fetchall()
        context['Organismos'] = organismos

    return template, context
