#actual rotation is mult by -1 to make clockwise positive
class Sensor_Rotation(Sensor):
    def read(self):
        reading = cmds.getAttr(self.name + '.rotateX')
    
        return -1*reading
        
#Tests
print
print "Testing ..."
randomSensorName = cmds.ls( 'sensor_rotation_*' )[0]
print("testing " + randomSensorName)
s = Sensor_Rotation(randomSensorName)
print "sensor to string: " + str(s)
print "sensor reading: " + str(s.read())