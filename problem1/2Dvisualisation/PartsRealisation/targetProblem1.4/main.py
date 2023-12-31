from sets import *

import pygame

pygame.init() #initialising pygame



def draw_backgound():
    pygame.draw.rect(screen, sky_colour, sky)
    pygame.draw.rect(screen, grass_colour, grass)

def draw_path(x, y):
    for i in range(0, screen_width, path_step):
        path_rect = pygame.Rect(i, y, path_width, path_height)
        pygame.draw.rect(screen, path_colour, path_rect)


screen = pygame.display.set_mode(screen_size) #screen setting
pygame.display.set_caption('Aim Visualisation')
clock = pygame.time.Clock()

sky = pygame.Rect((0, 0, screen_width, screen_height))
grass = pygame.Rect((0, screen_height - 100, screen_width, 100))

target = pygame.image.load('PngImages/Plane/plane.png')
# target_width = target_rect.right - target_rect.left
# target_height = target_rect.bottom - target_rect.top
# print(target_width)
# print(target_height)
target = pygame.transform.scale(target, (target_width, target_height))
target_rect = target.get_rect(center = (250, 300))

run_variable = True

aim_move = False
aim_move_counter = 0

coordinates = pygame.font.Font(None, 25)
while run_variable: #game loop

    screen.fill((0,0,0))
    draw_backgound()
    # target_rect.fill(0, 0, 0)
    screen.blit(target, target_rect)
    text_coordinates = coordinates.render("x: {}, y: {} \n current v: {}".format(target_rect.x, target_rect.y, v_target), False, 'Black')

    screen.blit(text_coordinates, (0, 0))
    
    draw_path(target_rect.left, target_rect.centery)

    # pygame.draw.rect(screen, (34,139,34), trajectory_aim)

    # pygame.draw.rect(screen, (255, 0, 0), aim)
    # 34,139,34

    key = pygame.key.get_pressed()


    if (aim_move):
        target_rect.left -= v_target
        aim_move_counter += 1
        if (aim_move_counter >= 180):
            aim_move = False
            aim_move_counter = 0
        v_target += a_target
    else :
        if key[pygame.K_a] == True:
            target_rect.left -= moving_speed

        if key[pygame.K_d] == True:
            target_rect.left += moving_speed

        if key[pygame.K_w] == True:
            target_rect.top -= moving_speed
            # trajectory_aim.move_ip(0, -1)


        if key[pygame.K_s] == True:
            target_rect.top += moving_speed
            # trajectory_aim.move_ip(0, 1)

        if key[pygame.K_q] == True:
            aim_move = True
        
    for event in pygame.event.get():

        if event.type == pygame.QUIT: #
            run_variable = False
    pygame.display.update()
    
    clock.tick(FPS)

pygame.quit()
