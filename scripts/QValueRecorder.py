import pickle
import os
import os.path
from os import path

#set working directory

class QValueRecorder:
    #key = (State, Action)
    #value = int
    def __init__(self):
        newWorkingDirectory = "/Users/brianlo/Documents/maya/projects/QLearningCrawlerFlipper/scripts"
        os.chdir(newWorkingDirectory)
        self.recorder = {}
        
    def get(self, key):
        if key in self.recorder:
            return self.recorder[key]
        else:
            return 0
           
    def set(self, key, value):
        self.recorder[key] = value
        
    def save(self):
        with open('qVals' + '.pkl', 'wb') as f:
            pickle.dump(self.recorder, f, pickle.HIGHEST_PROTOCOL)

    def savedRecordExists(self):
        return path.exists("qVals.pkl")
        
    def load(self):
        if self.savedRecordExists():
            with open('qVals' + '.pkl', 'rb') as f:
                self.recorder = pickle.load(f)
            print "loaded qVal record with {} entries".format(len(self.recorder))
        else:
            print "NO SAVED qVals FOUND, CONTINUE"
            
    def maxQAtState(self, s):
        nextPossibleActions = s.getNextPossibleActions()
        qVals = [self.get((s, a)) for a in nextPossibleActions]
        return max(qVals)        
        
        
#DON'T RUN OR WILL OVERRIDE SAVED DATA
def test():
    key1 = (State(1,2,3,4,5,6), Action(80,0))
    key2 = (State(5,4,3,2,1,0), Action(0,80))
    
    qRecorder = QValueRecorder()
    if qRecorder.get(key1) != 0:
        print "ERROR: DEFAULT VALUES SHOULD BE 0"
    else:
        print "DEFAULT VALUE TEST PASSED :)"
    qRecorder.set(key1, 1)
    if qRecorder.get(key1) != 1:
        print "ERROR: GETTING KEY 1"
    elif qRecorder.get((State(1,2,3,4),Action(80,0))) != 1:
        print "ERROR: GETTING KEY 2"
    else:
        print "get tests passed :)"
    
    qRecorder.set(key2, 89)
    qRecorder.save()
    
    print
    print "saved dictionary: "
    print [str(key[0]) + " " + str(key[1]) for key in qRecorder.recorder.keys()]
    print [str(value) for value in qRecorder.recorder.values()]
    
    qRecorder2 = QValueRecorder()
    qRecorder2.load()
    print "loaded dictionary: (should match saved)"
    print [str(key[0]) + " " + str(key[1]) for key in qRecorder2.recorder.keys()]
    print [str(value) for value in qRecorder2.recorder.values()]
    
    print
    print "default 0 test on loaded dict: (should be 0)"
    print qRecorder2.get((State(1,3,3,3), Action(80, 80)))   
    
    print "{} should be true".format(qRecorder2.savedRecordExists())   
    
    print
    key3 = (State(1,2,3,1000), Action(80,0)) 
    v3 = qRecorder2.get(key3)
    if not v3 == 1:
        print "EQUVALENT STATES TEST FAILED"
    else:
        print "EQUIVALENCE STATES TEST PASSED"
        
    print "testing max Q"
    print qRecorder.maxQAtState(State(1,2,3,66,1,0))
    print qRecorder.maxQAtState(State(5,4,3,5,1,0))
    print qRecorder.maxQAtState(State(6,4,3,5,1,0))
    
qr = QValueRecorder()
qr.load()
print [str(key[0]) + " " + str(key[1]) for key in qr.recorder.keys()]
print [str(value) for value in qr.recorder.values()]
