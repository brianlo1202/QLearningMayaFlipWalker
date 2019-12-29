import maya.cmds as cmds
#reference to motorShape1
motor1 = cmds.ls( 'motorShape1' )[0]

#change motor speed to 40
cmds.setAttr( "motorShape1.angularMotorTargetSpeedX", 40 )

#keyframe motor speed
cmds.setKeyframe( 'motorShape1', at='angularMotorTargetSpeedX')

#update current time
currentFrame = cmds.currentTime( query=True )
nextFrame = currentFrame + 1;
cmds.currentTime( nextFrame, edit=True )

#read sensors
reading = cmds.getAttr('sensor_bodyRotation.rotateX')
print "bodyRotation: " + str(reading)
