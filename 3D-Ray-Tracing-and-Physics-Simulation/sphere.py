# sphere.py
from hittable import *
from vec3 import *
from ray import Ray
from interval import *
import math

class Sphere(Hittable):
    def __init__(self, center: Point3, radius: float, material: Material):
        self.center = center
        self.radius = max(0.0, radius)
        self.material = material

    def hit(self, r: Ray, ray_t: Interval, rec: HitRecord) -> bool:
        oc = self.center - r.origin()
        a = r.direction().length_squared()
        h = dot(r.direction(), oc)
        c = oc.length_squared() - self.radius * self.radius

        delta = h*h - a*c
        if delta < 0:
            return False

        sqrtd = math.sqrt(delta)

        root = (h - sqrtd) / a
        if not ray_t.surrounds(root):
            root = (h + sqrtd) / a
            if not ray_t.surrounds(root):
                return False

        rec.t = root
        rec.p = r.at(rec.t)
        outward_normal = (rec.p - self.center) / self.radius
        rec.set_face_normal(r, outward_normal)
        rec.material = self.material

        return True
