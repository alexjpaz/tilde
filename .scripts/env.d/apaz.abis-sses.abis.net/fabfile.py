from fabric.api import run, task, execute

import tasks.portal
import tasks.update
import tasks.sync.sync

@task
def portal_development():
	execute(watch)
	execute(jetspeed)

@task
def watch():
	tasks.sync.sync.startWatching()
	
@task
def jetspeed():
	tasks.portal.jetspeed()

@task
def jboss():
	tasks.portal.jboss()

	
@task(alias='tc')
def mvn_tomcat_run():
	tasks.portal.tomcat()

@task(alias='up')
def update():
	tasks.update.git()

@task(alias='bp')
def build_portlet():
	tasks.portal.build_portlet()
