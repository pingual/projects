from hittable import *
from vec3 import *
from ray import *
from interval import *
import math

class Box(Hittable):
    def __init__(self, center: Point3, width: float, height: float, depth: float, material: Material):
        self.center = center
        self.width = max(0, width)
        self.height = max(0, height)
        self.depth = max(0, depth)
        self.material = material

        self.min_bound = Point3(center.x() - width / 2,center.y() - height / 2,center.z() - depth / 2)
        self.max_bound = Point3(center.x()+width/2,center.y()+height/2,center.z()+depth/2)

    def hit(self, r: Ray, ray_t: Interval, rec: HitRecord) -> bool:
        # Algorithme slab method pour l'intersection rayon-boîte
        t_min = ray_t.min
        t_max = ray_t.max
        
        # Pour chaque axe (x, y, z)
        for axis in range(3):
            # Direction du rayon sur cet axe
            inv_d = 1.0 / r.direction().e[axis] if abs(r.direction().e[axis]) > 1e-8 else 1e8
            
            # Calcul des intersections avec les plans perpendiculaires à cet axe
            t0 = (self.min_bound.e[axis] - r.origin().e[axis]) * inv_d
            t1 = (self.max_bound.e[axis] - r.origin().e[axis]) * inv_d
            
            # Assurer que t0 < t1
            if inv_d < 0:
                t0, t1 = t1, t0
            
            # Mettre à jour l'intervalle d'intersection
            t_min = max(t_min, t0)
            t_max = min(t_max, t1)
            
            # Si l'intervalle devient invalide, pas d'intersection
            if t_max <= t_min:
                return False
        
        # Si on arrive ici, il y a une intersection à t_min
        rec.t = t_min
        rec.p = r.at(rec.t)
        
        outward_normal = self.get_face_normal(rec.p)
        rec.set_face_normal(r, outward_normal)
        rec.material = self.material
        
        return True
    
    def get_face_normal(self, p: Point3) -> Vec3:
        epsilon = 1e-4
        if abs(p.x() - self.min_bound.x()) < epsilon:
            return Vec3(-1, 0, 0)
        if abs(p.x() - self.max_bound.x()) < epsilon:
            return Vec3(1, 0, 0)
        if abs(p.y() - self.min_bound.y()) < epsilon:
            return Vec3(0, -1, 0)
        if abs(p.y() - self.max_bound.y()) < epsilon:
            return Vec3(0, 1, 0)
        if abs(p.z() - self.min_bound.z()) < epsilon:
            return Vec3(0, 0, -1)
        if abs(p.z() - self.max_bound.z()) < epsilon:
            return Vec3(0, 0, 1)
        return Vec3(0, 1, 0) # Never used