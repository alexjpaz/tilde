from os import system as syscall

from fabric.api import run, put, task, sudo, parallel, local, runs_once, lcd, settings
from fabric.api import env as fabenv
from fabric.colors import  red, green, blue, yellow
from fabric.contrib.project import rsync_project
from fabric.context_managers import hide
from fabric.tasks import execute

import pyinotify


@task(alias='bp')
def build_portal():
	local('mvn clean install -Dmaven.test.skip=true -f /build/cbf.git/portal/portlets/pom.xml')

@task(alias='bpa')
def build_portal_all():
	local('mvn clean install -Dmaven.test.skip=true -f /build/cbf.git/portal/pom.xml')


@task(alias='c')
def copy_static_files():
	src = '/build/cbf.git/portal/portlets/src/main/webapp/assets/'
	dest = 'portal:/opt/jetspeed/webapps/ABISPortlet'
	
	_cmd = 'scp -r %s %s > /dev/null' % (src,dest)

	local(_cmd)

	src = '/build/cbf.git/portal/portlets/src/main/webapp/script/'
	dest = 'portal:/opt/jetspeed/webapps/ABISPortlet'
	
	_cmd = 'scp -r %s %s > /dev/null' % (src,dest)

	local(_cmd)

	src = '/build/cbf.git/portal/portlets/src/main/webapp/WEB-INF/view/'
	dest = 'portal:/opt/jetspeed/webapps/ABISPortlet/WEB-INF'
	
	_cmd = 'scp -r %s %s > /dev/null' % (src,dest)

	local(_cmd)

@task(alias='ca')
def copy_assets():
	local('mvn clean process-resources -Dmaven.test.skip=true -f /build/cbf.git/portal/portlets/pom.xml')

	src = '/build/cbf.git/portal/portlets/target/ABISPortlet/assets/'
	dest = 'portal:/opt/jetspeed/webapps/ABISPortlet'
	
	_cmd = 'scp -r %s %s' % (src,dest)
	local(_cmd)

@task(alias='w')
def copy_wars():
	src = '/build/cbf.git/portal/portlets/target/ABISPortlet.war'
	dest = 'portal:/opt/jetspeed/webapps/ABISPortlet.war'

	_cmd = 'scp %s %s' % (src,dest)
	local(_cmd)

@task(alias='tc')
def tomcat_run():
	_cmd = 'export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=256m -Xss2m"; mvn tomcat:run'
	local(_cmd)

#@task(alias='sync')
#def watch_and_update():
	
