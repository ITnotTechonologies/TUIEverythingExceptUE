from sets import *
from math import sin, pi, tan

angle = 45
h = 600

target = [200, h]
t_projecilte = 0


def degreesToRadians(x):
    return x * (pi / 180)

def distanceTraveledByProjectile(angle, h):
    return h / sin(degreesToRadians(angle))

def distanceTraveledByTarget(v_target, t_projectile):
    return v_target * t_projectile

def intersectionX(angle, h):
    return h / tan(degreesToRadians(angle))
 
def targetTraveledX(x, s1):
    return x - s1

def cmp_main(angle):
    global t_projectile
    s1 = distanceTraveledByProjectile(angle, h)
    t_projectile = s1 / v_projectile
    s2 = distanceTraveledByTarget(v_target, t_projectile)
    target_traveled[0] = targetTraveledX(target[0], s2)
    target_traveled[1] = target[1]
    intersection[0] = intersectionX(angle, h)
    intersection[1] = target[1]

    # print("s1:{} \n t: {} \n s2:{} \n intersection: x:{}  y:{}\n target_traveled: x:{}  y:{}  ".format(s1, t_projectile, s2, intersection[0], intersection[1], target_traveled[0], target_traveled[1]))


# binary search realisation

possible = False

loop = True

top = 180
bottom = 0
for i in range(8):
    angle = (top + bottom) / 2
    target_traveled = [0, 0]
    intersection = [0, 0]
    cmp_main(angle)
    print(i + 1, ")", top, bottom, angle)
    print("targe tposition:", target_traveled)
    print("intersection of two graphs(projectile, target) position:",intersection)
    print("time after the start of the experiment needed for projectile to reach target:",t_projectile)

    print()
    if abs(intersection[0] - target_traveled[0]) <= target_width:
        print("Result: Yes \n Angle: {}".format(angle))
        possible = True
        break
    if intersection[0] > target_traveled[0]:
        bottom = angle
    else:
        possible = True
        top = angle

if not(possible): print("Our calculations show that the target is unreachable for a projectile")
if possible: print("The target should be reachable by projectile")
