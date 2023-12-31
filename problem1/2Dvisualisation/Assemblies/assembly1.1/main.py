from sets import * #all settings and constants
import pygame
from sys import exit
from math import sqrt, ceil, tan, pi, sin, cos
import pygame_gui
pygame.init()


def movement_controller():
    global gun_angle
    global action_move
    global projectile_movement
    global target_movement
    global fps_movement
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
            projectile_movement = 0
            target_movement = 0
            fps_movement = 0

def gui_contoller():
    global run_variable
    global action_move
    global gun_angle
    global v_target

    for event in pygame.event.get():
        if event.type == pygame.QUIT: #
            run_variable = False
        if event.type == pygame_gui.UI_BUTTON_PRESSED:
            if event.ui_element == start_button:
                action_move = True
        if event.type == pygame_gui.UI_TEXT_ENTRY_CHANGED:
            if event.ui_element == target_positionX_entry:
                if event.text:
                    try:
                        target_rect.centerx = float(event.text)
                    except ValueError:
                        target_rect.centerx = 100
                else:
                    target_rect.centerx = 100
            if event.ui_element == target_positionY_entry:
                if event.text:
                    try:
                        target_rect.centery = float(event.text)
                    except ValueError:
                        target_rect.centery = 100
                else:
                    target_rect.centery = 100
            if event.ui_element == gun_angle_entry:
                if event.text:
                    try:
                        gun_angle = float(event.text)
                    except ValueError:
                        gun_angle = 1
                else:
                    gun_angle = 1
            if event.ui_element == v_target_entry:
                if event.text:
                    try:
                        v_target = float(event.text)
                    except ValueError:
                        v_target = 30
                else:
                    v_target = 30

        manager.process_events(event)

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
    screen.blit(projectile_rotated, projectile_rect)
    screen.blit(gun_rotated, gun_rect)
    screen.blit(base, base_rect)
    ui_background = pygame.Rect(screen_width - 300, 0, 300, screen_height)
    pygame.draw.rect(screen, 'white', ui_background)
    manager.draw_ui(screen)

    pygame.display.flip()

# Screen settings
screen_width = 1300
screen_height = 600
screen = pygame.display.set_mode((screen_width, screen_height)) #screen setting

pygame.display.set_caption('Aim Visualisation')
clock = pygame.time.Clock()

# Projectile_settings
projectile_position_start = (142, 447)
projectile_position = [projectile_position_start[0], projectile_position_start[1]]
projectile = pygame.image.load("PngImages/Bullet/bullet.png").convert_alpha()
projectile = pygame.transform.scale(projectile, projectile_size)

# Gun settings
gun_position = (142, 447)
gun_length = gun_width / 2
gun_angle = 1 # starting angle

# Target settings
target = pygame.image.load('PngImages/Plane/plane.png')
# plane_width = target_rect.right - target_rect.left
# plane_height = target_rect.bottom - target_rect.top
# print(plane_width)
# print(plane_height)
target = pygame.transform.scale(target, (plane_width, plane_height))
target_rect = target.get_rect(center = (800, 400))

run_variable = True
action_move = False

target_movement = 0
projectile_movement = 0
fps_movement = 0

h = 600
v_target = 30 #plane_speed * fps = speed in pixels per second
v_projectile = 30
rotation_speed = 1 #angle/s -- speed of angle change of a gun

# GUI
manager = pygame_gui.UIManager((screen_width, screen_height))
start_button = pygame_gui.elements.UIButton(relative_rect = pygame.Rect((1100, 500), (100, 50)), text = "Start", manager = manager)
target_positionX_entry = pygame_gui.elements.UITextEntryLine(relative_rect = pygame.Rect((1060, 100), (50, 30)), manager=manager)
v_target_entry = pygame_gui.elements.UITextEntryLine(relative_rect = pygame.Rect((1120, 100), (50, 30)), manager=manager)
target_positionY_entry = pygame_gui.elements.UITextEntryLine(relative_rect = pygame.Rect((1060, 200), (50, 30)), manager=manager)
gun_angle_entry = pygame_gui.elements.UITextEntryLine(relative_rect = pygame.Rect((1120, 200), (50, 30)), manager=manager)
entry_header = pygame_gui.elements.UITextBox(relative_rect=pygame.Rect((1005, 5), (200, 50)), html_text = 'Entry Section', manager=manager)



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
        angle = gun_angle
    else:
        file_path = 'PngImages/Gun/gun_to_the_left3.png'
        angle = -180 + gun_angle
    gun = pygame.image.load(file_path).convert_alpha()
    gun = pygame.transform.scale(gun, (gun_width, gun_height))
    gun_rotated = pygame.transform.rotate(gun, angle)
    gun_rect = gun_rotated.get_rect(center = gun_position)

    # rotating projectile
    projectile_rotated = pygame.transform.rotate(projectile, gun_angle)
    projectile_rect = projectile_rotated.get_rect(center = (projectile_position[0], projectile_position[1]))

    if action_move:
        # fps_movement 
        fps_movement += 1
        if fps_movement > 100:
            action_move = False

        # projectile movement
        projectile_movement += v_projectile
        x0 = cos(degreesToRadians(gun_angle)) * projectile_movement
        y0 = sin(degreesToRadians(gun_angle)) * projectile_movement
        projectile_position[0] = projectile_position_start[0] + x0
        projectile_position[1] = projectile_position_start[1] - y0

        # target movement
        target_movement += v_target
        target_rect.left -= v_target
    
    manager.update(time_delta)
    drawing_controller()
    movement_controller()
    gui_contoller()

    pygame.display.update()
    clock.tick(FPS)

pygame.quit()


