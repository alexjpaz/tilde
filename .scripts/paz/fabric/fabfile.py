from fabric.api import run, task, execute

from tasks import http

import logging

logging.basicConfig(level=logging.DEBUG, format='%(asctime)s - %(levelname)s - %(message)s')

log = logging.getLogger(__name__)

import tasks

