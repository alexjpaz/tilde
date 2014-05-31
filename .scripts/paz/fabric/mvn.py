from fabric.api import run, task, execute, local

import logger
log = logger.get(__name__)

@task(alias='tc')
def tomcat7():
    tomcat_opts = '-Dmaven.tomcat.port=8881' 
    call(["mvn","tomcat:run",tomcat_opts])

@task(alias='tc7')
def tomcat7():
    tomcat_opts = '-Dmaven.tomcat.port=8881' 
    call(["mvn","tomcat7:run",tomcat_opts])
