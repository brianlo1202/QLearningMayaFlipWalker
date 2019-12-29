
#position of the body is ignored when comparing states; only angles of motors matter
maxMotorSpeedMag = 160
class State:
    def __init__(self, bodyRot, joint1Rot, joint2Rot, bodyTrans, motor1Speed, motor2Speed):
        self.bodyRot = bodyRot
        self.joint1Rot = joint1Rot
        self.joint2Rot = joint2Rot
        self.bodyTrans = bodyTrans
        self.motor1Speed = motor1Speed
        self.motor2Speed = motor2Speed
        
    #0,-80 -80,0 0,80 80,0 -80,80, 80,-80 80,80 -80,-80
    #note to self: clockwise is positive
    def getNextPossibleActions(self):
        #aListPart1 = [Action(0, j2) for j2 in [maxMotorSpeedMag, -maxMotorSpeedMag]]
        aListPart2 = [Action(maxMotorSpeedMag, j2) for j2 in [maxMotorSpeedMag, -maxMotorSpeedMag]]
        aListPart3 =[Action(-maxMotorSpeedMag, j2) for j2 in [maxMotorSpeedMag, -maxMotorSpeedMag]]
        
        actions = aListPart2 + aListPart3
        
        if self.joint1Rot == 90:
            actions = [a for a in actions if a.joint1Speed != maxMotorSpeedMag]
        if self.joint1Rot == -90:
            actions = [a for a in actions if a.joint1Speed != -maxMotorSpeedMag]
        if self.joint2Rot == 90:
            actions = [a for a in actions if a.joint2Speed != maxMotorSpeedMag]
        if self.joint2Rot == -90:
            actions = [a for a in actions if a.joint2Speed != -maxMotorSpeedMag]
         
        
        return actions
       
        
    def __str__(self):
        return "state: {} {} {} {} {} {}".format(self.bodyRot, self.joint1Rot, self.joint2Rot, self.bodyTrans, self.motor1Speed, self.motor2Speed)
        
    def __hash__(self):
        return hash((self.bodyRot, self.joint1Rot, self.joint2Rot, self.motor1Speed, self.motor2Speed))
        
    def __eq__(self, other):
        me = (self.bodyRot, self.joint1Rot, self.joint2Rot, self.motor1Speed, self.motor2Speed)
        him = (other.bodyRot, other.joint1Rot, other.joint2Rot, other.motor1Speed, other.motor2Speed)
        
        return me == him
        
        
#tests
s = State(1,2,3,4,5,6)
s2 = State(1,2,3,2000,5,6)
print str(s)
hash1 = hash(s)
hash2 = hash(s2)
if not hash1 == hash2:
    print "ERROR: HASHES SHOULD BE THE SAME"
else:
    print "HASH TEST PASSED :)"
    
if s == s2:
    print "EQUALITY TEST PASSED :)"
else:
    print "ERROR: STATES SHOULD BE THE SAME :("
    
print "next possible actions: "
print [str(action) for action in s2.getNextPossibleActions()]
print [str(action) for action in s.getNextPossibleActions()]
    

    
    
