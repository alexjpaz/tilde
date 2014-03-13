from fabric.api import run, task, execute, local

import logger
log = logger.get(__name__)

@task(default=True)
def run(args):
	local('ps')

@task
def psg(arg):
	cmd = 'ps -ef | grep "[%s]%s"'
	cmd = cmd % (arg[0],arg[1:])
	result = local(cmd,capture=True)

	lines = result.split('\n')

	filtered_lines = [l for l in lines]

	log.debug(filtered_lines)
#	local(cmd)

@task
def chrome():
	cmd = 'google-chrome --disable-web-security --user-data-dir=/tmp/paz/google-chrome-no-security'
	result = local(cmd,capture=True)
