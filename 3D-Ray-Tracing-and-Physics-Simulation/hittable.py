# hittable.py
from vec3 import *
from ray import *
from abc import ABC, abstractmethod
from interval import *
from material import *


class HitRecord:
    def __init__(self, p=None, normal=None, material = None, t=0.0, front_face=True):
        self.p = p if p is not None else Point3()
        self.normal = normal if normal is not None else Vec3()
        self.material = material
        self.t = t
        self.front_face = front_face

    def set_face_normal(self, r: Ray, outward_normal: Vec3):
        self.front_face = dot(r.direction(), outward_normal) < 0
        self.normal = outward_normal if self.front_face else -outward_normal

class Hittable(ABC):
    @abstractmethod
    def hit(self, r: Ray, ray_t: Interval, rec: HitRecord) -> bool:
        pass
