import os
import threading
import time
from pyinotify import WatchManager, Notifier, ThreadedNotifier, EventsCodes, ProcessEvent
import logging

logging.basicConfig(level=logging.DEBUG,format='(%(threadName)-10s) %(message)s')

import pyinotify 

class AssetsCopyWorker(threading.Thread):
    
    def __init__(self, basepath):
        threading.Thread.__init__(self)
        self.hasChanges = False;
        self.basepath = basepath
        self.name = 'AssetsCopyWorker'
    
    def notify(self):
        self.hasChanges = True;
    
    def stop(self):
        self._Thread__stop()
        
    def checkChanges(self):
        if(self.hasChanges):
            logging.debug("%s has changes" % self.basepath)
            self.hasChanges = False
            self.copyAssets()
        
    def run(self):
        while True:
            self.checkChanges()
            time.sleep(2)
            
    def copyAssets(self):
        logging.debug('Copying files ' + self.basepath)
        src = '/build/cbf.git/portal/portlets/src/main/webapp/' + self.basepath
        dest = '~/.mnt/webapps/ABISPortlet/' + self.basepath
        os.system('rsync -rv %s %s 1> /dev/null' % (src,dest))

class AssetsProcessEvent(ProcessEvent):
    
    def __init__(self, worker):
        self.worker = worker
    
    def process_IN_CREATE(self, event):
        logging.debug('File created ' + event.name)
        self.notifyWorker()
        
    def process_IN_MODIFY(self, event):
        logging.debug('File modfied ' + event.name)
        self.notifyWorker()
        
    def notifyWorker(self):
        self.worker.notify()
    
class TargetProcessEvent(ProcessEvent):
    
    def process_IN_CREATE(self, event):
        print 'TargetProcessEvent',event.name
        

class AssetWatcher():
    
    def __init__(self, basepath):
        self.basepath = basepath
        self.__threadpool = []
    
    def addWatch(self, asset_dir):   
        wm = WatchManager()
        mask = pyinotify.ALL_EVENTS
        notifier = ThreadedNotifier(wm)
        worker = AssetsCopyWorker(asset_dir)
        wm.add_watch(self.basepath+asset_dir, mask, proc_fun=AssetsProcessEvent(worker), rec=True)
        
        self.__threadpool.append(notifier)
        self.__threadpool.append(worker)
        
    def startup(self):
        for thread in self.__threadpool:
            logging.info("Starting threads %s", thread.name)
            thread.start()
    
    def shutdown(self):
        for thread in self.__threadpool:
            logging.info("Shutting down thread %s", thread.name)
            thread.stop()
        
        
