import pygame
from sys import exit
from math import sqrt, ceil, tan, pi, sin, cos
import pygame_gui
pygame.init()




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
    global target_position
    global starting_angle
    h = target_position[1]
    s1 = distanceTraveledByProjectile(angle, h)
    t_projectile = s1 / v_projectile + ((abs(starting_angle - angle)) / gun_movement)
    s2 = distanceTraveledByTarget(v_target, t_projectile, a_target)
    print(s1, s2)
    target_traveled[0] = targetTraveledX(target_position[0], s2)
    target_traveled[1] = target_position[1]
    intersection[0] = intersectionX(angle, h)
    intersection[1] = target_position[1]
    # print("s1:{} \n t: {} \n s2:{} \n intersection: x:{}  y:{}\n target_traveled: x:{}  y:{}  ".format(s1, t_projectile, s2, intersection[0], intersection[1], target_traveled[0], target_traveled[1]))

# binary search realisation
def binary_search():
    possible = False
    global angle_needed

    loop = True

    top = 180
    bottom = 0
    for i in range(8):
        angle = (top + bottom) / 2
        cmp_main(angle)
        print(i + 1, ")", top, bottom, angle)
        print("targe tposition:", target_traveled)
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
    angle_needed = angle


def movement_controller():
    global action_move
    global projectile_movement
    global target_movement
    global fps_movement
    global gun_rotation
    global angle_needed
    global gun_angle
    global v_target
    key = pygame.key.get_pressed()
    if not(action_move):
        if key[pygame.K_UP]:
            if gun_angle < 179:
                gun_angle += rotation_speed
        if key[pygame.K_DOWN]:
            if gun_angle > 1:
                gun_angle -= rotation_speed
        if key[pygame.K_a] == True:
            target_rect.left -= moving_speed

        if key[pygame.K_d] == True:
            target_rect.left += moving_speed

        if key[pygame.K_w] == True:
            target_rect.top -= moving_speed
            # trajectory_aim.move_ip(0, -1)
        if key[pygame.K_s] == True:
            target_rect.top += moving_speed

        if key[pygame.K_SPACE]:
            action_move = True
            gun_rotation = True
            projectile_movement = 0
            target_movement = 0
            fps_movement = 0
            target_position[0] = target_rect.centerx - 142
            target_position[1] = gun_position[1] - target_rect.centery
            print("target_rect:", target_position)
            print("v_projectile = ", v_projectile)
            print("v_target =", v_target)
            print("starting_angle =", gun_angle)
            # print("")
            binary_search()

def gui_contoller():
    global run_variable
    global action_move
    global gun_angle
    global v_target
    global a_target
    #  global action_move
    global projectile_movement
    global target_movement
    global fps_movement
    global gun_rotation
    global angle_needed
    # global gun_angle
    global v_projectile
    
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            run_variable = False
def hypotenuse(a, b):
    return sqrt(a * a + b * b)

def degreesToRadians(x):
    return x * (pi / 180)

def draw_backgound():
    sky = pygame.Rect((0, 0, screen_width - 300, screen_height))
    grass = pygame.Rect((0, screen_height - 100, screen_width - 300, 100))
    pygame.draw.rect(screen, sky_colour, sky)
    pygame.draw.rect(screen, grass_colour, grass)

def distanceTraveledByProjectile(angle, h):
    return h / sin(degreesToRadians(angle))

def draw_gun_path(x, y):
    global gun_angle
    global h
    s = distanceTraveledByProjectile(gun_angle, h)    

    path = pygame.image.load("PngImages/Gun/gun_path.png").convert_alpha()
    path = pygame.transform.scale(path, (path_width, path_height))
    path = pygame.transform.rotate(path, gun_angle)

    for i in range(0, ceil(s), path_step):
        x0 = cos(degreesToRadians(gun_angle)) * i
        y0 = sin(degreesToRadians(gun_angle)) * i
        
        path_rect = path.get_rect(center = (x + x0, y - y0))
        screen.blit(path, path_rect)


def target_draw_path(x, y):
    for i in range(0, screen_width, path_step):
        path_rect = pygame.Rect(i, y, path_width, path_height)
        pygame.draw.rect(screen, path_colour, path_rect)

def drawing_controller():
    draw_backgound()
    target_draw_path(target_rect.left, target_rect.centery)
    screen.blit(target, target_rect)
    draw_gun_path(gun_rect.centerx, gun_rect.centery)
    screen.blit(gun_rotated, gun_rect)
    screen.blit(base, base_rect)
    screen.blit(projectile_rotated, projectile_rect)

    ui_background = pygame.Rect(screen_width - 300, 0, 300, screen_height)
    pygame.draw.rect(screen, 'white', ui_background)
    # manager.draw_ui(screen)

    pygame.display.flip()

# Screen settings
screen_width = 1300
screen_height = 600
screen = pygame.display.set_mode((screen_width, screen_height)) #screen setting

pygame.display.set_caption('Aim Visualisation')
clock = pygame.time.Clock()

# Projectile_settings
projectile_size = (20, 10)
projectile_position_start = (142, 447)
projectile_position = [projectile_position_start[0], projectile_position_start[1]]
projectile = pygame.image.load("PngImages/Bullet/bullet.png").convert_alpha()
projectile = pygame.transform.scale(projectile, projectile_size)

# Gun settings
gun_width = 270
gun_height = 50
gun_position = (142, 447)
gun_length = gun_width / 2
gun_angle = 1 # starting angle
starting_angle = 0
angle_needed = 90

target_traveled = [0, 0]
t_projectile = 0
intersection = [0, 0]
target_position = [0, 0]

# Target settings
target_width =  79.1 #791 default
target_height = 20.9 #209 default
target = pygame.image.load('PngImages/Plane/plane.png')
# plane_width = target_rect.right - target_rect.left
# plane_height = target_rect.bottom - target_rect.top
# print(plane_width)
# print(plane_height)
target = pygame.transform.scale(target, (target_width, target_height))
target_rect = target.get_rect(center = (745 + 142, 447 - 225))

run_variable = True
action_move = False
gun_rotation = False

target_movement = 0
projectile_movement = 0
fps_movement = 0

h = 600
v_target = 10 #plane_speed * fps = speed in pixels per second
v_projectile = 30
rotation_speed = 1 #angle/s -- speed of angle change of a gun
a_target = 1
gun_movement = 10

grass_colour = (178, 255, 102)
sky_colour = (153, 255, 255)

path_width = 20
path_height = 2
path_step = 40
path_colour = 'Black'
moving_speed = 10

FPS = 30


# gun_position 142, 447, from the topleft 

# base size: 1837, 533 k = 3.447
base_width = 262.5
base_height = 75

while run_variable: #game loop
    file_path = ''
    time_delta = clock.tick(60) / 1000.0


    # setting up a gun base
    if (gun_angle <= 90):
        file_path = 'PngImages/Gun/base_to_the_right.png'
    else:
        file_path = 'PngImages/Gun/base_to_the_left.png'
    base = pygame.image.load(file_path).convert_alpha()
    base = pygame.transform.scale(base, (base_width, base_height))
    base_rect = base.get_rect(bottomleft = (0, screen_height - 100))

    # setting up a gun
    if (gun_angle <= 90):
        file_path = 'PngImages/Gun/gun_to_the_right3.png'
        d_angle = gun_angle
    else:
        file_path = 'PngImages/Gun/gun_to_the_left3.png'
        d_angle = -180 + gun_angle
    gun = pygame.image.load(file_path).convert_alpha()
    gun = pygame.transform.scale(gun, (gun_width, gun_height))
    gun_rotated = pygame.transform.rotate(gun, d_angle)
    gun_rect = gun_rotated.get_rect(center = gun_position)
    projectile_rotated = pygame.transform.rotate(projectile, gun_angle)
    projectile_rect = projectile_rotated.get_rect(center=(projectile_position[0], projectile_position[1]))

    # rotating projectile


    if action_move:
        # fps_movement 
        fps_movement += 1
        if fps_movement > ceil(t_projectile) + 2:
            action_move = False
            print("target: ", target_rect.centerx - gun_rect.centerx, gun_rect.centery - target_rect.centery)

            print("projectile: ", projectile_rect.centerx - gun_rect.centerx, gun_rect.centery - projectile_rect.centery)
        
        if gun_rotation:
            if (gun_angle < angle_needed):
                if (angle_needed - gun_angle) <= gun_movement:
                    gun_angle = angle_needed
                    gun_rotation = False
                    # continue
                else:
                    gun_angle += gun_movement
            if (gun_angle > angle_needed):
                if (gun_angle - angle_needed) <= gun_movement:
                    gun_angle = angle_needed
                    gun_rotation = False
                    # continue
                else:
                    gun_angle -= gun_movement 

        # projectile movement
        if not(gun_rotation):
            projectile_movement += v_projectile
            x0 = cos(degreesToRadians(gun_angle)) * v_projectile
            y0 = sin(degreesToRadians(gun_angle)) * v_projectile
            projectile_position[0] += x0
            projectile_position[1] -= y0
            # if (sin(degreesToRadians(gun_angle)) * v_projectile) 

        # target movement
        if fps_movement > 0:
            target_movement += v_target
            target_rect.left -= v_target
            v_target += a_target 

    # manager.update(time_delta)

    drawing_controller()
    movement_controller()
    gui_contoller()

    clock.tick(60)
    pygame.display.update()

pygame.quit()


