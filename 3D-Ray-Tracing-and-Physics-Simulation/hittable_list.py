from hittable import *
from ray import *
from typing import *
from interval import *

class HittableList(Hittable):
    def __init__(self, objects=None):
        self.objects: List[Hittable] = []
        if objects:
            for obj in objects:
                self.add(obj)

    def clear(self):
        self.objects.clear()

    def add(self, obj: Hittable):
        self.objects.append(obj)

    def hit(self, r: Ray, ray_t: Interval, rec: HitRecord) -> bool:
        temp_rec = HitRecord()
        hit_anything = False
        closest_so_far = ray_t.max
        
        for obj in self.objects:
            if obj.hit(r, Interval(ray_t.min, closest_so_far), temp_rec):
                hit_anything = True
                closest_so_far = temp_rec.t
                rec.t = temp_rec.t
                rec.p = temp_rec.p
                rec.normal = temp_rec.normal
                rec.front_face = temp_rec.front_face
                rec.material = temp_rec.material
    
        return hit_anything
