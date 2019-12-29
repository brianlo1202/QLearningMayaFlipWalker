class Sensor:
    #pass in name of transform node (the node with the rotation attribute)
    def __init__(self, name):
        self.name = name;
        
    def read(self):
        return -1
        
    def __str__(self):
        return self.name + " (current reading: " + str(self.read()) + ")"
        
#Test
print
print "Testing ..."
randomSensorName = cmds.ls( 'sensor_*' )[0]
print("testing " + randomSensorName)
s = Sensor(randomSensorName)
print "sensor to string: " + str(s)
print "sensor reading: " + str(s.read())