from sets import * #all settings and constants
import pygame
from sys import exit
from math import sqrt, ceil, tan, pi, sin, cos
pygame.init()

h = 600


def hypotenuse(a, b):
    return sqrt(a * a + b * b)

def degreesToRadians(x):
    return x * (pi / 180)

def draw_backgound():
    sky = pygame.Rect((0, 0, screen_width, screen_height))
    grass = pygame.Rect((0, screen_height - 100, screen_width, 100))
    pygame.draw.rect(screen, sky_colour, sky)
    pygame.draw.rect(screen, grass_colour, grass)

def distanceTraveledByProjectile(angle, h):
    return h / sin(degreesToRadians(angle))

def draw_gun_path(x, y):
    global gun_angle
    global h
    s = distanceTraveledByProjectile(gun_angle, h)    

    for i in range(0, ceil(s), 20):
        x0 = cos(degreesToRadians(gun_angle)) * i
        y0 = sin(degreesToRadians(gun_angle)) * i
        path_surface = pygame.Surface((5, 5))
        path_surface.fill("Yellow")
        path_rect = path_surface.get_rect(center = (x + x0, y - y0))
        screen.blit(path_surface, path_rect)

    

def movement_controller():
    global gun_angle
    global projectile_move
    global projectile_movement
    key = pygame.key.get_pressed()
    if not(projectile_move):
        if key[pygame.K_UP]:
            if gun_angle < 179:
                gun_angle += 1
        if key[pygame.K_DOWN]:
            if gun_angle > 1:
                gun_angle -= 1
        if key[pygame.K_q]:
            projectile_move = True
            projectile_movement = 0
    


            

    # print(gun_angle)

def drawing_controller():
    screen.fill((0,0,0))
    draw_backgound()
    
    screen.blit(gun_rotated, gun_rect)
    screen.blit(base, base_rect)
    draw_gun_path(gun_rect.centerx, gun_rect.centery)
    screen.blit(projectile_rotated, projectile_rect)


screen = pygame.display.set_mode(screen_size) #screen setting
pygame.display.set_caption('Aim Visualisation')
clock = pygame.time.Clock()

projectile_move = False
projectile_position_start = (142, 447)
projectile_position = [projectile_position_start[0], projectile_position_start[1]]

run_variable = True


gun_angle = 1

projectile_movement = 0

while run_variable: #game loop
    file_path = ''

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
        file_path = 'PngImages/Gun/gun_to_the_right2.png'
        angle = gun_angle
    else:
        file_path = 'PngImages/Gun/gun_to_the_left3.png'
        angle = -180 + gun_angle
    gun = pygame.image.load(file_path).convert_alpha()
    gun = pygame.transform.scale(gun, (gun_width, gun_height))
    gun_rotated = pygame.transform.rotate(gun, angle)
    gun_rect = gun_rotated.get_rect(center = (142, 447))

    # setting up a projectile
    projectile = pygame.image.load("PngImages/Bullet/bullet.png").convert_alpha()
    projectile = pygame.transform.scale(projectile, projectile_size)
    projectile_rotated = pygame.transform.rotate(projectile, gun_angle)
    
    projectile_rect = projectile_rotated.get_rect(center = (projectile_position[0], projectile_position[1]))


    # function calls section
    drawing_controller()
    gun_length = gun_width / 2
    movement_controller()
    
    if projectile_move:
        projectile_movement += v_projectile
        x0 = cos(degreesToRadians(gun_angle)) * projectile_movement
        y0 = sin(degreesToRadians(gun_angle)) * projectile_movement
        projectile_position[0] = projectile_position_start[0] + x0
        projectile_position[1] = projectile_position_start[1] - y0

    # exit from a program realisation
    for event in pygame.event.get():

        if event.type == pygame.QUIT: #
            run_variable = False
    pygame.display.update()
    
    clock.tick(FPS)

pygame.quit()