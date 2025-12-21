#vec3.py
import math
import random

class Vec3:
    __slots__ = ("e",)

    def __init__(self, x=0.0, y=0.0, z=0.0):
        self.e = [float(x), float(y), float(z)]

    def x(self): return self.e[0]
    def y(self): return self.e[1]
    def z(self): return self.e[2]

    def __neg__(self): return Vec3(-self.e[0], -self.e[1], -self.e[2])

    def __add__(self, other): return Vec3(self.e[0]+other.e[0], self.e[1]+other.e[1], self.e[2]+other.e[2])
    def __sub__(self, other): return Vec3(self.e[0]-other.e[0], self.e[1]-other.e[1], self.e[2]-other.e[2])
    def __mul__(self, t):
        if isinstance(t, Vec3):
            return Vec3(self.e[0]*t.e[0], self.e[1]*t.e[1], self.e[2]*t.e[2])
        else:
            return Vec3(self.e[0]*t, self.e[1]*t, self.e[2]*t)
    def __rmul__(self, t): return self * t
    def __truediv__(self, t): return self * (1/t)

    def __iadd__(self, other):
        self.e[0] += other.e[0]
        self.e[1] += other.e[1]
        self.e[2] += other.e[2]
        return self

    def __imul__(self, t):
        self.e[0] *= t
        self.e[1] *= t
        self.e[2] *= t
        return self

    def __itruediv__(self, t):
        return self.__imul__(1/t)

    def length(self): return math.sqrt(self.length_squared())
    def length_squared(self): return self.e[0]**2 + self.e[1]**2 + self.e[2]**2

    def near_zero(self):
        return abs(self.e[0]) < 0.00000001 and abs(self.e[1]) < 0.00000001 and abs(self.e[2]) < 0.00000001

    def __str__(self): return f"{self.e[0]} {self.e[1]} {self.e[2]}"
    __repr__ = __str__

# Aliases
Point3 = Vec3
Color = Vec3

def dot(u: Vec3, v: Vec3) -> float:
    return u.e[0]*v.e[0] + u.e[1]*v.e[1] + u.e[2]*v.e[2]

def cross(u: Vec3, v: Vec3) -> Vec3:
    return Vec3(
        u.e[1]*v.e[2] - u.e[2]*v.e[1],
        u.e[2]*v.e[0] - u.e[0]*v.e[2],
        u.e[0]*v.e[1] - u.e[1]*v.e[0]
    )

def unit_vector(v: Vec3) -> Vec3:
    return v / v.length()

def random_vec3(min_val=0.0, max_val=1.0) -> Vec3:
    return Vec3(random.uniform(min_val, max_val),random.uniform(min_val, max_val),random.uniform(min_val, max_val))

def random_unit_vector() -> Vec3:
    while True:
        p = random_vec3(-1.0, 1.0)
        lensq = p.length_squared()
        if 0.0000000001 < lensq <= 1:
            return p / math.sqrt(lensq)

def random_on_hemisphere(normal: Vec3) -> Vec3:
    on_unit_sphere = random_unit_vector()
    if dot(on_unit_sphere,normal) > 0:
        return on_unit_sphere
    return -on_unit_sphere

def reflect(v: Vec3, n: Vec3) -> Vec3:
    return v - 2*dot(v,n)*n