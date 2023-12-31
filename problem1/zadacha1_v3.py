v_pushk= int(input("enter the speed of the missle"))
v_goal= int(input("enter the speed of the goal"))
coor_x=int(input("enter the coordiante x"))
coor_y= int(input("enter the coordiante y"))
a=coor_y**2*v_pushk**2+coor_x**2*v_pushk**2
b=2*coor_y**2*v_goal*v_pushk
c=coor_y**2*v_pushk**2-coor_x**2*v_pushk**2
dis=(b**2-4*a*c)**0.5
print((-b+dis)/2*a)
print((-b-dis)/2*a)
