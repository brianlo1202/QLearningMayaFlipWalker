#Flip Version!!
import random
import time

E = 0.0 #exploration rate
a = 0.0 #learning rate
y = 1.0
speed = 0.041 #time between frames (0.041 is real time 24 fps)

#sim will stop if programTimeLimit OR maxIterations are met
inf = float('inf') #in case u need it
programTimeLimit = 5*60 #seconds
maxIterations = 2

endAnimFrame = 384


def timeToExplore(E):
    randNum = random.random()
    return randNum <= E
    
def wait(secs):
    time.sleep(secs)
    
def nextFrame():
    currentFrame = cmds.currentTime( query=True )
    nextFrame = currentFrame + 1;
    cmds.currentTime( nextFrame, edit=True )
        
def makeStopButton():
    windowID = 'StopButtonWindow'
    if cmds.window( windowID, exists=True ):
        cmds.deleteUI( windowID )
    cmds.window( windowID, title='QLearning', sizeable=True, resizeToFitChildren=True )
    cmds.columnLayout(adjustableColumn=1, columnAttach=('both', 100))
    cmds.text( label='Press to end QLearning:' )
    cmds.button( label='Stop', command=stopCallback )
    
    cmds.showWindow()
    
def stopCallback(*args):
    print "Stop pressed"
    stopPressed = True

startTime = -1 
def timerStart():
    global startTime
    startTime = time.time()
    
def timeIsUp():
    return (time.time() - startTime) > programTimeLimit
    
def atEndAnimFrame():
    currentFrame = cmds.currentTime( query=True )
    return currentFrame >= endAnimFrame

def chooseUntakenAction(s, qr):
    nextPossibleActions = s.getNextPossibleActions()

    untakenActions = [a for a in nextPossibleActions if qr.get((s,a)) == 0]
    
    if len(untakenActions) == 0: #choose from non max actions if none unexplored
        maxQ = max([qr.get((s,a)) for a in nextPossibleActions])
        nonMaxActions = [a for a in nextPossibleActions if qr.get((s,a)) != maxQ]
        try:
            return random.choice(nonMaxActions)
        except: #just return random choice if still error
            return random.choice(nextPossibleActions)
    else:   
        return random.choice(untakenActions)
    
def chooseBestAction(s, qr):
    nextPossibleActions = s.getNextPossibleActions()
    
    maxQ = max([qr.get((s,a)) for a in nextPossibleActions])
    #print "exploited Q: {}".format(maxQ)
    maxActions = [a for a in nextPossibleActions if qr.get((s,a)) == maxQ]
    return random.choice(maxActions)
    
def resetSim(crawler):
     #set all motors to 0 speed
    everythingOff = Action(0,0)
    crawler.takeAction(everythingOff)
    
    #set frame to 1
    cmds.currentTime( 1, edit=True )
    
    waitForModelToSettle()

def waitForModelToSettle():
    print "waiting for model to settle..."
    while cmds.currentTime( query=True ) < 48:
        nextFrame()
        wait(speed)
           
def main():
    
    #set to frame 1
    cmds.currentTime(1, edit=True )
    
    waitForModelToSettle()
    
    #create walker
    crawler = Walker("crawler")
    currentState = crawler.getCurrentState()
    qr = QValueRecorder()
    qr.load() #load saved data if exists
    
    
    #possible restart state stuff
    restartNeeded = False
    dead = False
    
    #timers
    timerStart()
    currentIteration = 0
    
    #set up reward gates
    rewardGates = cmds.ls( 'rewardGate*' )
    rewardGates = [rg for rg in rewardGates if not "Shape" in rg]
    rewardGates = [-cmds.getAttr(rg + '.translateZ') for rg in rewardGates]
      
    while not timeIsUp() and currentIteration < maxIterations:
        nextPossibleActions = currentState.getNextPossibleActions()
        
        action = None
        
        if timeToExplore(E):
            #print "explore"
            action = chooseUntakenAction(currentState, qr)
        else: #exploit
            #print "exploit"
            action = chooseBestAction(currentState, qr)
            
        crawler.takeAction(action)
        wait(speed)
        
        #q update
        s = currentState
        sPrime = crawler.getCurrentState()
        r = sPrime.bodyTrans - s.bodyTrans
        
        #reward gate
        
        if r > 0:
            crossedGate = any([sPrime.bodyTrans > gate and s.bodyTrans < gate for gate in rewardGates])
            if crossedGate:
                #take out rewardGate
                rewardGates = [rg for rg in rewardGates if not (sPrime.bodyTrans > rg and s.bodyTrans < rg)]
                
                r += 1000000 * int(sPrime.bodyTrans)
                
                print "reward gate: " + str(r) 
         
        #print str(r)
        
        #reward for using foot
        if crawler.transSensors[1].readY () <= 0.2:
            r += 32
            
        #punish for knee on ground
        if crawler.transSensors[2].readY () <= 0:
            r -= 100000
            
        #punish for foot under body
        if crawler.rotSensors[0].read() > -30 and crawler.rotSensors[1].read() > 50 and crawler.rotSensors[2].read() >= -5:
            r-= 100000
            #print "PENALTY: FOOT UNDER BODY!"
        
        sample = r + y*qr.maxQAtState(sPrime)
        
        newQVal = (1-a) * qr.get((s,action)) + a * sample
                
        qr.set((s, action), newQVal) 
        
        #punish for folding foot into knee
        if crawler.rotSensors[2].read() > 85:
            r -= 1000000
            print "PENALTY: FOOT IN KNEE!!"
        
        #update current state
        currentState = sPrime
        
        if atEndAnimFrame():

            currentIteration += 1
            print "iteration {} of {} complete".format(currentIteration, maxIterations)
            resetSim(crawler)
            
            #reset reward gates
            rewardGates = cmds.ls( 'rewardGate*' )
            rewardGates = [rg for rg in rewardGates if not "Shape" in rg]
            rewardGates = [-cmds.getAttr(rg + '.translateZ') for rg in rewardGates]
                    
            qr.save()
        
     
    #set all motors to 0 speed
    everythingOff = Action(0,0)
    crawler.takeAction(everythingOff)
    
    print "QLearning Terminated"
main()