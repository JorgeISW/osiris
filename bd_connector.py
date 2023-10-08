from flask_mysqldb import MySQL


def connect(app):
    # Configura la conexión a la base de datos MySQL
    app.config['MYSQL_HOST'] = 'localhost'
    app.config['MYSQL_USER'] = 'root'
    app.config['MYSQL_PASSWORD'] = ''
    app.config['MYSQL_DB'] = 'osiris'

    return MySQL(app)
