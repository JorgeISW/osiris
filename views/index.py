
def index_view(db_conn):
    template = 'index.html'
    context = {}

    with db_conn.connection.cursor() as cur:
        cur.execute("SELECT * FROM planetas")
        planetas = cur.fetchall()
        context['planetas'] = planetas

    return template, context
