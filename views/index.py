
def index_view(db_conn):
    template = 'index.html'
    context = {}

    with db_conn.connection.cursor() as cur:
        cur.execute("SELECT organismo FROM organismos")
        organismos = cur.fetchall()
        context['organismos'] = organismos

    return template, context
