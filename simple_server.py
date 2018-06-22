#!/usr/bin/env python3

# USED BY THE FLIGHTVIDEO SERVER TO SERVE JAVASCRIPT
# https://code.outdooractive.com/platform/flightvideo/issues/1

import http.server
import socketserver
import sys

PORT = 8000 if len( sys.argv ) < 2 else int( sys.argv[ 1 ] )

Handler = http.server.SimpleHTTPRequestHandler

httpd = socketserver.TCPServer(("127.0.0.1", PORT), Handler)

print("serving at port", PORT)
httpd.serve_forever()
