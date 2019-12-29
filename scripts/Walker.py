import maya.cmds as cmds

class Walker:
    #creates new Walker with specified string name
    #creates motor object for all motors in scene
    #motors must be named motor1, motor2 ...
    #creates sensor object for all sensors in scene
    #sensors must be named sensor_rotate_description or sensor_translate_description
    #(description can be anything)
    
    #States are in increments of 10 degrees
    #clockwise is positive
    #forward direction is positive
    def __init__(self, name):
        self.name = name
        
        #make list of motors, set all to 0 speed
        motorList = cmds.ls( 'motorShape*')
        self.motors = [Motor(motor) for motor in motorList]
        
        #make list of rotation sensors
        rotationSensorsList = cmds.ls( 'sensor_rotation*')
        self.rotSensors = [Sensor_Rotation(sensor) for sensor in rotationSensorsList if not "Shape" in sensor]
        
        #make list of translate sensors
        transSensorsList = cmds.ls( 'sensor_translate*')
        self.transSensors = [Sensor_Translate(sensor) for sensor in transSensorsList if not "Shape" in sensor]
        
    def roundDown5(self, value):
        if value >= 0:
            return int(value - value % 5)
        else:
            return int(value + -1 * value % 5)
     
    def getCurrentState(self):
        sensor1 = self.roundDown5(self.rotSensors[0].read())
        sensor2 = self.roundDown5(self.rotSensors[1].read())
        sensor3 = self.roundDown5(self.rotSensors[2].read())
        sensor4 = self.transSensors[0].read() #translation sensor no need round down
        motor1Speed = self.motors[0].getSpeed()
        motor2Speed = self.motors[1].getSpeed()
        return State(sensor1, sensor2, sensor3, sensor4, motor1Speed, motor2Speed)
    
    def nextFrame(self):
        currentFrame = cmds.currentTime( query=True )
        nextFrame = currentFrame + 1;
        cmds.currentTime( nextFrame, edit=True )
        
    def takeAction(self, action):
        self.motors[0].setSpeed(action.joint1Speed)
        self.motors[1].setSpeed(action.joint2Speed)
        self.nextFrame()
        
        
        pass
#tests
crawler = Walker("crawler");
print "motors:"
print [str(motor) for motor in crawler.motors]
print "rot sensors:"
print [str(sensor) for sensor in crawler.rotSensors]
print "trans sensors:"
print [str(sensor) for sensor in crawler.transSensors]
print "current state:"
print crawler.getCurrentState()

print "take Action test"
a = Action(80, -80)
crawler.takeAction(a)






       
