import os
import time
from pyinotify import WatchManager, Notifier, ThreadedNotifier, EventsCodes, ProcessEvent

from watch import AssetWatcher

import logging
logging.basicConfig(level=logging.DEBUG,format='(%(threadName)-10s) %(message)s')

def initMounts():
    print 'Initializing mounts'
    os.system('mkdir -p ~/.mnt/webapps')
    os.system('sshfs ~/.mnt/webapps portal:/opt/jetspeed/webapps')
    
def startWatching():
    logging.info('Starting watch')
    
    watcher = AssetWatcher('/build/cbf.git/portal/portlets/src/main/webapp/')
    
    watch = []
    watch.append('WEB-INF/view/')
    watch.append('assets/')
    watch.append('script/')
    
    for asset_dir in watch:
        watcher.addWatch(asset_dir)
        
    watcher.startup()
    
    while True:
        try:
            time.sleep(1)
        except KeyboardInterrupt:
            watcher.shutdown()
            logging.info("Watcher shutdown successfully")
            break
