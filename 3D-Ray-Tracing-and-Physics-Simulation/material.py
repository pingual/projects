#material.py
from abc import ABC, abstractmethod
from ray import *
from vec3 import *

class Material(ABC):
    @abstractmethod
    def scatter(self, r_in: Ray, rec) -> tuple[bool, Color, Ray]:
        from hittable import HitRecord
        return False, Color(0,0,0), None
    
    def emitted(self) -> Color:
        return Color(0, 0, 0)

class Lambertian(Material):
    def __init__(self, albedo: Color):
        self.albedo = albedo

    def scatter(self, r_in: Ray, rec):
        from hittable import HitRecord
        scatter_direction = rec.normal + random_unit_vector()
        if scatter_direction.near_zero():
            scatter_direction = rec.normal
        scattered = Ray(rec.p, scatter_direction)
        attenuation = self.albedo
        return True, attenuation, scattered

class Metal(Material):
    def __init__(self, albedo: Color, fuzz: float):
        self.albedo = albedo
        self.fuzz = min(1,fuzz)

    def scatter(self, r_in: Ray, rec):
        from hittable import HitRecord
        reflected = reflect(r_in.direction(), rec.normal)
        reflected = unit_vector(reflected) + (self.fuzz * random_unit_vector())
        scattered = Ray(rec.p, reflected)
        attenuation = self.albedo
        return (dot(scattered.direction(),rec.normal)>0), attenuation, scattered

class DiffuseLight(Material):
    def __init__(self, emit_color: Color, intensity: float = 1.0):
        self.emit_color = emit_color
        self.intensity = intensity
    
    def scatter(self, r_in: Ray, rec):
        return False, Color(0, 0, 0), None
    
    def emitted(self) -> Color:
        return self.emit_color * self.intensity