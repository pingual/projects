#ray.py
from vec3 import *

class Ray:
    def __init__(self, origin: Point3 = None, direction: Vec3 = None):
        self.orig = origin if origin is not None else Point3()
        self.dir = direction if direction is not None else Vec3()

    def origin(self) -> Point3:
        return self.orig

    def direction(self) -> Vec3:
        return self.dir

    def at(self, t: float) -> Point3:
        return self.orig + t * self.dir

