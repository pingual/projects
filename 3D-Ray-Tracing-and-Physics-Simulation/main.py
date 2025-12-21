# main.py
from vec3 import *
from ray import *
from hittable_list import *
from hittable import *
from sphere import *
from box import *
from interval import *
from camera import *
from color import *
from material import *

import math

infinity = float('inf')
aspect_ratio = 9.0 / 9.0
image_width = 100
image_height = max(1, int(image_width / aspect_ratio))

world = HittableList()

material_ground = Lambertian(Color(0.8, 0.8, 0.0))
material_center = Lambertian(Color(0.1, 0.2, 0.5))
material_left   = Metal(Color(0.8, 0.8, 0.8),0.3)
material_right  = Metal(Color(0.8, 0.6, 0.2),1)

world.add(Sphere(Point3( 0.0,-100.5,-1),100, material_ground))
world.add(Box(Point3(0.0, -0.5, -1.5), 0.8, 0.6, 0.4, material_center))
world.add(Sphere(Point3( 0,    0.0, -1.2),   0.5, material_center))
world.add(Sphere(Point3(-1.0,    0.0, -1.0),   0.5, material_left))
world.add(Sphere(Point3( 1.0,    0.0, -1.0),   0.5, material_right))


cam = Camera()
cam.aspect_ratio = 16.0 / 9.0
cam.image_width = 400
cam.samples_per_pixel = 100
cam.max_depth = 50
cam.vfov = 90
#cam.lookfrom = Point3(-2,2,1)
#cam.lookat = Point3(0,0,-1)
#cam.vup = Vec3(0,1,0)
cam.initialize()
cam.render(world, output_file="image.ppm")


