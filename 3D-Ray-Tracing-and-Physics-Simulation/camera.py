# camera.py
from vec3 import *
from ray import *
from hittable import *
from interval import *
from color import *
import math
import random
import time

infinity = float('inf')

class Camera:
    def __init__(self, image_width: int = 100, aspect_ratio: float = 1.0, samples_per_pixel: int = 10, max_depth: int = 50, vfov: float = 90, lookfrom = Point3(0,0,0), lookat = Point3(0,0,-1), vup = Point3(0,1,0)):
        self.image_width = image_width
        self.aspect_ratio = aspect_ratio
        self.samples_per_pixel = samples_per_pixel
        self.max_depth = 10
        self.vfov = vfov
        self.lookfrom = lookfrom
        self.lookat = lookat
        self.vup = vup
        self.image_height = None
        self.center = None
        self.pixel00_loc = None
        self.pixel_delta_u = None
        self.pixel_delta_v = None
        self.initialize()

    def initialize(self):
        self.image_height = max(1, int(self.image_width / self.aspect_ratio))
        self.center = self.lookfrom

        focal_length = (self.lookfrom - self.lookat).length()
        theta = self.vfov * math.pi / 180
        h = math.tan(theta/2)
        viewport_height = 2 * h * focal_length
        viewport_width = viewport_height * (self.image_width / self.image_height)

        w = unit_vector(self.lookfrom - self.lookat)
        u = unit_vector(cross(self.vup,w))
        v = cross(w,u)

        viewport_u = viewport_width * u
        viewport_v = viewport_height * -v

        self.pixel_delta_u = viewport_u / self.image_width
        self.pixel_delta_v = viewport_v / self.image_height

        viewport_upper_left = self.center - (focal_length*w) - viewport_u/2 - viewport_v/2
        self.pixel00_loc = viewport_upper_left + 0.5 * (self.pixel_delta_u + self.pixel_delta_v)

    def get_ray(self, i: int, j: int) -> Ray:
        offset = self.sample_square()
        pixel_sample = (self.pixel00_loc + (i + offset.x()) * self.pixel_delta_u + (j + offset.y()) * self.pixel_delta_v)

        ray_origin = self.center
        ray_direction = pixel_sample - ray_origin
        return Ray(ray_origin, ray_direction)

    def sample_square(self) -> Vec3:
        return Vec3(random.random() - 0.5,random.random() - 0.5,0.0)

    def ray_color(self, r: Ray, depth: int, world: Hittable) -> Color:
        if depth <= 0:
            return Color(0, 0, 0)
        
        rec = HitRecord()
        if not world.hit(r, Interval(0.001, infinity), rec):
            unit_direction = unit_vector(r.direction())
            a = 0.5 * (unit_direction.y() + 1.0)
            return (1.0 - a) * Color(1.0, 1.0, 1.0) + a * Color(0.5, 0.7, 1.0)
        emitted = rec.material.emitted()
        scatter_success, attenuation, scattered = rec.material.scatter(r, rec)
        if scatter_success:
            return emitted + attenuation * self.ray_color(scattered, depth - 1, world)
        else:
            return emitted

    def render(self, world: Hittable, output_file: str = "image.ppm"):
        start_time = time.time()
        last_time = start_time
        previous_elapsed = [start_time - last_time]*10
        average_elapsed = start_time - last_time
        with open(output_file, "w") as f:
            f.write(f"P3\n{self.image_width} {self.image_height}\n255\n")

            for j in range(self.image_height):
                current_time = time.time()
                elapsed = current_time - last_time
                last_time = current_time
                average_elapsed = average_elapsed - previous_elapsed[0] + elapsed
                for i in range(9):
                    previous_elapsed[i]=previous_elapsed[i+1]
                previous_elapsed[9]=elapsed
                time_left = "???"
                if j>0:
                    duration = (self.image_height - j)*average_elapsed/10
                    if duration >= 60:
                        time_left = f"{int(duration)//60}m {int(int(duration)%60)}s"
                    else:
                        time_left = f"{duration}s"
                print(f"\rScanlines remaining: {self.image_height - j}. Estimated Time Left: {time_left}                ", end="", flush=True)
                for i in range(self.image_width):
                    pixel_color = Color(0,0,0)
                    for sample in range(self.samples_per_pixel):
                        r = self.get_ray(i,j)
                        pixel_color += self.ray_color(r,self.max_depth,world)
                    write_color(f,pixel_color/self.samples_per_pixel)

        print("\nDone.")


