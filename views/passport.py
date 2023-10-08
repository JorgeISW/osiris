import bd_connector


def passport_view(app, id_spece):
    template = 'passport.html'
    context = {}

    with bd_connector.connect(app).cursor() as cur:
        cur.execute(f"SELECT * FROM organism WHERE ID={id_spece}")
        organismo = cur.fetchall()

        if organismo:
            organismo = organismo[0]
        else:
            context['error'] = "I'm sorry, organism not found"
        context['passport'] = organismo

    return template, context
