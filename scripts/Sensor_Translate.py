class Sensor_Translate(Sensor):
    def read(self):
        reading = cmds.getAttr(self.name + '.translateZ')
        return reading * -1
    def readY(self):
        reading = cmds.getAttr(self.name + '.translateY')
        return reading
              
#Tests
print
print "Testing ..."
randomSensorName = cmds.ls( 'sensor_translate_*' )[0]
print("testing " + randomSensorName)
s = Sensor_Translate(randomSensorName)
print "sensor to string: " + str(s)
print "sensor reading: " + str(s.read())
print "sensor reading Y: " + str(s.readY())
        

         