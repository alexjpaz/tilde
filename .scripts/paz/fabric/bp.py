from fabric.api import run, task, execute, local

from string import Template

import logger
log = logger.get(__name__)

@task(default=True)
def boilerplate(branch, name=None):

	if name is None:
		name=branch

	tmpl = Template('git clone --single-branch --branch $branch $repo $name')
	cmd = tmpl.substitute(branch=branch, repo="https://github.com/alexjpaz/boilerplate.git", name=name)

	local(cmd)
