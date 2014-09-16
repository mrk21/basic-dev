#!/usr/bin/env python
# -*- coding: utf-8 -*-
import httplib
import base64
import urlparse
import sys

url = urlparse.urlparse(sys.argv[1])

if url.scheme == 'https':
    connection = httplib.HTTPSConnection(url.netloc)
elif url.scheme == 'http':
    connection = httplib.HTTPConnection(url.netloc)

connection.request('GET', url.path)
response = connection.getresponse()
data = response.read()
connection.close()

print base64.b64encode(data)
