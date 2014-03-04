from fabric.api import run, task, execute

import tasks.http

@task(alias='http')
def http_server():
	tasks.http.start()

