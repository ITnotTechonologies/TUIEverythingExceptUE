import math

def DegreesToRadians(x):
    return x * math.pi / 180

x = 700
y = 50
B = 45
u = 50
v = 150

A = 0

for A in range(0, 180, 1):
   TimeLeft = x / (v * math.cos(DegreesToRadians(A)) + u * math.cos(DegreesToRadians(B)))
   TimeRight = y / (v * math.sin(DegreesToRadians(A)) - u * math.sin(DegreesToRadians(B)))

   print(A, TimeLeft, TimeRight, abs(TimeLeft - TimeRight))