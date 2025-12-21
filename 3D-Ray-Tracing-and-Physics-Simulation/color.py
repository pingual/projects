#color.py
from vec3 import Vec3
from interval import *
import math

# Alias (equivalent: using color = vec3;)
Color = Vec3

def linear_to_gamma(linear_component):
    if linear_component>0:
        return math.sqrt(linear_component)
    return 0

def write_color(file, pixel_color: Color):
    r = linear_to_gamma(pixel_color.x())
    g = linear_to_gamma(pixel_color.y())
    b = linear_to_gamma(pixel_color.z())
    intensity = Interval(0.0, 0.999)
    rbyte = int(256 * intensity.clamp(r))
    gbyte = int(256 * intensity.clamp(g))
    bbyte = int(256 * intensity.clamp(b))
    file.write(f"{rbyte} {gbyte} {bbyte}\n")
