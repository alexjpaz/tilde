import sys,os


def git():
	basedir = '/build/cbf.git'
	for fn in os.listdir(basedir):
		path = os.path.join(basedir,fn,'.git')
		cmd = 'git --git-dir=%s svn fetch' % (path)
		os.system(cmd)
