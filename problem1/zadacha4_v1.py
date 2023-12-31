import numpy as np

def dist(angle,an, v,v2,h,s,acc):
  a=v*np.cos(an)
  b=v*np.sin(an)
  x=h/b #time
  return abs(an-angle)*v2+v2*t+v2*a-s+(acc*t*t/2)

v_pushk= 30
v_goal= 10
coor_x=int(input("enter the coordiante x"))
coor_y= int(input("enter the coordiante x"))
angle=30
acc = 1


right=0
left=np.Pi//2
for i in range(100):
  if dist(angle, (left-right)/3, v_pushk, v_goal, coor_x, coor_y, acc)   >dist(angle, (left-right)/3*2,v_pushk, v_goal, coor_x, coor_y, acc):
    right=(left-right)/3
  else:
    left=(left-right)/3*2
print (min(right, left))
