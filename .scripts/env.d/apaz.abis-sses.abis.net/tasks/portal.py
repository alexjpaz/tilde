from fabric.api import run

from subprocess import call

java_opts = "-Xmx1024m -XX:MaxPermSize=256m -Xss2m"

def jetspeed():
    call(["/opt/jetspeed/bin/catalina.sh", "run",java_opts])
    
def tomcat():
    tomcat_opts = '-Dmaven.tomcat.port=8881' 
    #call(["mvn","tomcat:run",tomcat_opts,java_opts])
    call(["mvn","tomcat:run",tomcat_opts])

def jboss():
    call(["/opt/jboss/jboss-5.1.0.GA/bin/run.sh", "-c","nga"])

def build_portlet():
	call(["mvn","clean","install","-Dmaven.test.skip=true","-f","/build/cbf.git/portal/portlets/pom.xml"])
