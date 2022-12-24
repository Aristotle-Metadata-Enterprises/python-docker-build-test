# Needs to bind to host 0.0.0.0 to work inside container
flask --app python/hello run -h 0.0.0.0 -p 8000