import bd_connector

def itinerary_view(app):
    template = 'itinerary.html'
    x = 0
    y = 0
    context = [
        x,
        y
    ]
    return template, context
