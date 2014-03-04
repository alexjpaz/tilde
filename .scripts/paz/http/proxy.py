#!/user/bin/python
from bottle import route, run, static_file, request
import urllib2
import json
import os
import logging

class Config(object):
	remote_base_url = 'http://test.ajpaz531.appspot.com/'
	headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko/20100101 Firefox/16.0"
	}
	webapp = ''

config = Config()

@route('/')
def index():
    return static_file('index.html', root=config.webapp)

@route('/assets/<filepath:path>')
def static_assets(filepath):
    return static_file(filepath, root=config.webapp+'/assets/')

@route('/<resourcepath:path>')
def jaxrs_proxy(resourcepath):
	request_url = config.remote_base_url+resourcepath+'?'+request.query_string

	print 'apaz',request_url

	req = urllib2.Request(request_url, None, Config.headers)
	response = urllib2.urlopen(req)
	return response.read()

run(host='0.0.0.0', port=4000, debug=True)
