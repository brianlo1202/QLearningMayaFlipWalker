class Motor:
    #pass in name of shape node
    def __init__(self, name):
        self.name = name
    
    def getSpeed(self):
        speed = cmds.getAttr( self.name + ".angularMotorTargetSpeedX")
        return speed
    def setSpeed(self, newSpeed):
        cmds.setAttr( self.name + ".angularMotorTargetSpeedX", newSpeed)
        
    def __str__(self):
        return self.name + " (current speed: " + str(self.getSpeed()) + ")"
    
        
#test        
m1 = Motor("motorShape1")
print str(m1)
currentSpeed = m1.getSpeed()
newSpeed = currentSpeed + 1
m1.setSpeed(newSpeed)
if (m1.getSpeed() != newSpeed):
    print "ERROR IN MOTOR CLASS"
else:
    print "TEST CASES PASSED!!!"

        
      
        