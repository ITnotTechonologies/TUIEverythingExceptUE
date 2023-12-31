from sets import *

import pygame

pygame.init() #initialising pygame



def draw_backgound():
    pygame.draw.rect(screen, sky_colour, sky)
    pygame.draw.rect(screen, grass_colour, grass)

def target_draw_path(x, y):
    for i in range(0, screen_width, path_step):
        path_rect = pygame.Rect(i, y, path_width, path_height)
        pygame.draw.rect(screen, path_colour, path_rect)


screen = pygame.display.set_mode(screen_size) #screen setting
pygame.display.set_caption('Aim Visualisation')
clock = pygame.time.Clock()

sky = pygame.Rect((0, 0, screen_width, screen_height))
grass = pygame.Rect((0, screen_height - 100, screen_width, 100))

plane = pygame.image.load('PngImages/Plane/plane.png')
# plane_width = plane_rect.right - plane_rect.left
# plane_height = plane_rect.bottom - plane_rect.top
# print(plane_width)
# print(plane_height)
plane = pygame.transform.scale(plane, (plane_width, plane_height))
plane_rect = plane.get_rect(center = (250, 300))

run_variable = True

aim_move = False
aim_move_counter = 0

coordinates = pygame.font.Font(None, 25)
while run_variable: #game loop

    screen.fill((0,0,0))
    draw_backgound()
    # plane_rect.fill(0, 0, 0)
    screen.blit(plane, plane_rect)
    text_coordinates = coordinates.render("x: {}, y: {}".format(plane_rect.x, plane_rect.y), False, 'Black')

    screen.blit(text_coordinates, (0, 0))
    
    target_draw_path(plane_rect.left, plane_rect.centery)

    # pygame.draw.rect(screen, (34,139,34), trajectory_aim)

    # pygame.draw.rect(screen, (255, 0, 0), aim)
    # 34,139,34

    key = pygame.key.get_pressed()


    if (aim_move):
        plane_rect.left -= plane_speed
        aim_move_counter += plane_speed
        if (aim_move_counter >= 2 * screen_width):
            aim_move = False
            aim_move_counter = 0
    else :
        if key[pygame.K_a] == True:
            plane_rect.left -= moving_speed

        if key[pygame.K_d] == True:
            plane_rect.left += moving_speed

        if key[pygame.K_w] == True:
            plane_rect.top -= moving_speed
            # trajectory_aim.move_ip(0, -1)


        if key[pygame.K_s] == True:
            plane_rect.top += moving_speed
            # trajectory_aim.move_ip(0, 1)

        if key[pygame.K_q] == True:
            aim_move = True
        
    for event in pygame.event.get():

        if event.type == pygame.QUIT: #
            run_variable = False
    pygame.display.update()
    
    clock.tick(FPS)

pygame.quit()
