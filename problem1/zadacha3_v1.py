import numpy

def dist(angle,an, v,v2,h,s):
    a=v*np.cos(an)
    b=v*np.sin(an)
    x=h/b #time
  return abs(an-angle)*v2+v2*t+v2*a-s

v_pushk= int(input("enter the speed of the missle"))
v_goal= int(input("enter the speed of the goal"))
coor_x=int(input("enter the coordiante x"))
coor_y= int(input("enter the coordiante x"))
angle=int(input("enter an angle"))


right=0
left=np.Pi//2
for i in range(100):
  if dist(angle, (left-right)/3, v_pushk, v_goal, coor_x, coor_y)   >dist(angle, (left-right)/3*2,v_pushk, v_goal, coor_x, coor_y):
        right=(left-right)/3
    else:
        left=(left-right)/3*2
print (min(right, left))
  

