class Action:
    def __init__(self, joint1Speed, joint2Speed):
        self.joint1Speed = joint1Speed;
        self.joint2Speed = joint2Speed;
        
    def __hash__(self):
        return hash((self.joint1Speed, self.joint2Speed))
        
    def __eq__(self, other):
        me = (self.joint1Speed, self.joint2Speed)
        him = (other.joint1Speed, other.joint2Speed)
        
        return me == him
        
    def __str__(self):
        return "action: {} {}".format(self.joint1Speed, self.joint2Speed)
        
#tests
a1 = Action(80, 0)
a2 = Action(80, 0)
a3 = Action(80, 80)

print str(a1)

if not hash(a1) == hash(a2):
    print "ERROR: HASH SHOULD BE SAME"
if not a1 == a2:
    print "ERROR: SHOULD BE EQUAL"