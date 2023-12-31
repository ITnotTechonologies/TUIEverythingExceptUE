from sets import *
from math import sin, pi, tan

starting_angle = 22

angle = 0
h = 182

v_projectile = 30
target_width = 79.1 #791 default
target_height = 20.9 #209 default
v_target = 10 #plane_speed * fps = speed in pixels per second
gun_angle_change = 10 # degrees per second
a_target = 1

target_traveled = [0, 0]
intersection = [0, 0]

target = [745, 225]

t_projectile = 0
target_traveled = [0, 0]
intersection = [0, 0]


def degreesToRadians(x):
    return x * (pi / 180)

def distanceTraveledByProjectile(angle, h):
    return h / sin(degreesToRadians(angle))

def distanceTraveledByTarget(v, t, a):
    return t * (v + 0.5 * a * t)

def intersectionX(angle, h):
    if angle == 90:
        return 0
    return h / tan(degreesToRadians(angle))
 
def targetTraveledX(x, s1):
    return x - s1

def cmp_main(angle):
    global t_projectile
    global target_traveled
    global intersection
    h = target[1]
    s1 = distanceTraveledByProjectile(angle, h)
    t_projectile = s1 / v_projectile + ((abs(starting_angle - angle)) / gun_angle_change)
    s2 = distanceTraveledByTarget(v_target, t_projectile, a_target)
    target_traveled[0] = targetTraveledX(target[0], s2)
    target_traveled[1] = target[1]
    intersection[0] = intersectionX(angle, h)
    intersection[1] = target[1]
    # print("s1:{} \n t: {} \n s2:{} \n intersection: x:{}  y:{}\n target_traveled: x:{}  y:{}  ".format(s1, t_projectile, s2, intersection[0], intersection[1], target_traveled[0], target_traveled[1]))

# binary search realisation
def binary_search():
    global target_traveled
    global intersection
    global t_projectile
    possible = False

    loop = True

    top = 180
    bottom = 0
    for i in range(8):
        angle = (top + bottom) / 2

        cmp_main(angle)
        print(i + 1, ")", top, bottom, angle)
        print("target position:", target_traveled)
        print("intersection of two graphs(projectile, target) position:",intersection)
        print("time after the start of the experiment needed for projectile to reach target:",t_projectile)
        print()
        if abs(intersection[0] - target_traveled[0]) <= (target_width / 2):
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

binary_search()