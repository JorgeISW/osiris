import bd_connector


def destinations_view(app):
    template = 'destinations.html'
    x = 0
    y = 0
    context = [
        x,
        y
    ]
    return template, context
