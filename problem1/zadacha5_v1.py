import numpy

def dist(angle,an, v,v2,h,s,acc, g, m1,m2):
    a=v*np.cos(an)
    b=v*np.sin(an)
    x=h/b #time
  return abs(an-angle)*v2+v2*t+v2*a-s+(acc*t*t/2)

v_pushk= int(input("enter the speed of the missle"))
v_target= int(input("enter the speed of the target"))
coor_x=int(input("enter the coordiante x"))
coor_y= int(input("enter the coordiante x"))
angle=int(input("enter an angle"))
acc = int(input("enter acceleration "))
gravity=int(input("enter gravity"))
m_pushk= int(input("enter the mass of the missle"))
m_target= int(input("enter the mass of the target"))


right=0
left=np.Pi//2
for i in range(100):
  if dist(angle, (left-right)/3, v_pushk, v_target, coor_x, coor_y, acc, gravity, m_pushk, m_target)   >dist(angle, (left-right)/3*2,v_pushk, v_target, coor_x, coor_y, acc, gravity, m_pushk, m_target):
        right=(left-right)/3
    else:
        left=(left-right)/3*2
print (min(right, left))
