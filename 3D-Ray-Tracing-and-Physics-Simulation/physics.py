# physics.py
from vec3 import *
from sphere import *
from box import *
import math

class PhysicsObject:
    def __init__(self, hittable, mass=1.0, is_static=False, friction_coefficient=0.5):
        self.hittable = hittable
        self.mass = mass
        self.velocity = Vec3(0, 0, 0)
        self.is_static = is_static
        self.friction_coefficient = friction_coefficient
        self.on_ground = False
        
    def get_position(self):
        return self.hittable.center
    
    def set_position(self, new_pos):
        self.hittable.center = Point3(new_pos.x(), new_pos.y(), new_pos.z())
        if isinstance(self.hittable, Box):
            self.hittable.min_bound = Point3(
                new_pos.x() - self.hittable.width / 2,
                new_pos.y() - self.hittable.height / 2,
                new_pos.z() - self.hittable.depth / 2
            )
            self.hittable.max_bound = Point3(
                new_pos.x() + self.hittable.width / 2,
                new_pos.y() + self.hittable.height / 2,
                new_pos.z() + self.hittable.depth / 2
            )
    
    def get_radius(self):
        if isinstance(self.hittable, Sphere):
            return self.hittable.radius
        elif isinstance(self.hittable, Box):
            return math.sqrt(
                (self.hittable.width/2)**2 + 
                (self.hittable.height/2)**2 + 
                (self.hittable.depth/2)**2
            )
        return 0.5
    
    def get_lowest_point(self):
        pos = self.get_position()
        if isinstance(self.hittable, Sphere):
            return pos.y() - self.hittable.radius
        elif isinstance(self.hittable, Box):
            return pos.y() - self.hittable.height / 2
        return pos.y()
    
    def apply_force(self, force: Vec3):
        if not self.is_static:
            acceleration = force / self.mass
            self.velocity += acceleration


class PhysicsEngine:
    def __init__(self, gravity=9.81, ground_level=-100.5):
        self.objects = []
        self.gravity = gravity
        self.ground_level = ground_level
        self.air_friction = 0.01
        self.ground_friction_slide = 0.8
        self.ground_friction_roll = 0.3
        
    def add_object(self, physics_obj: PhysicsObject):
        self.objects.append(physics_obj)
    
    def clear(self):
        self.objects.clear()
    
    def update(self, dt: float):
        self._apply_gravity(dt)
        self._apply_friction(dt)
        self._update_positions(dt)
        self._handle_ground_collisions()
        self._handle_object_collisions()
    
    def _apply_gravity(self, dt: float):
        for obj in self.objects:
            if not obj.is_static and not obj.on_ground:
                obj.velocity += Vec3(0, -self.gravity * dt, 0)
    
    def _apply_friction(self, dt: float):
        for obj in self.objects:
            if obj.is_static:
                continue
            
            if obj.on_ground:
                if isinstance(obj.hittable, Sphere):
                    friction = self.ground_friction_roll
                else:
                    friction = self.ground_friction_slide
                
                horizontal_vel = Vec3(obj.velocity.x(), 0, obj.velocity.z())
                if horizontal_vel.length() > 0.001:
                    friction_force = horizontal_vel * (-friction * dt * 10)
                    obj.velocity += friction_force
                    if obj.velocity.length() < 0.01:
                        obj.velocity = Vec3(0, obj.velocity.y(), 0)
            else:
                if obj.velocity.length() > 0.001:
                    air_resistance = obj.velocity * (-self.air_friction * dt)
                    obj.velocity += air_resistance
    
    def _update_positions(self, dt: float):
        for obj in self.objects:
            if not obj.is_static:
                new_pos = obj.get_position() + obj.velocity * dt
                obj.set_position(new_pos)
    
    def _handle_ground_collisions(self):
        for obj in self.objects:
            if obj.is_static:
                continue
            
            lowest_point = obj.get_lowest_point()
            
            if lowest_point <= self.ground_level:
                pos = obj.get_position()
                if isinstance(obj.hittable, Sphere):
                    correction = self.ground_level + obj.hittable.radius - pos.y()
                elif isinstance(obj.hittable, Box):
                    correction = self.ground_level + obj.hittable.height / 2 - pos.y()
                else:
                    correction = 0
                
                new_pos = Point3(pos.x(), pos.y() + correction, pos.z())
                obj.set_position(new_pos)
                
                if obj.velocity.y() < 0:
                    restitution = 0.5
                    obj.velocity = Vec3(
                        obj.velocity.x(),
                        -obj.velocity.y() * restitution if abs(obj.velocity.y()) > 0.1 else 0,
                        obj.velocity.z()
                    )
                    
                    if abs(obj.velocity.y()) < 0.1:
                        obj.velocity = Vec3(obj.velocity.x(), 0, obj.velocity.z())
                        obj.on_ground = True
                else:
                    obj.on_ground = True
            else:
                if obj.velocity.y() < -0.1:
                    obj.on_ground = False
    
    def _handle_object_collisions(self):
        n = len(self.objects)
        
        for i in range(n):
            for j in range(i + 1, n):
                obj1 = self.objects[i]
                obj2 = self.objects[j]
                if obj1.is_static and obj2.is_static:
                    continue
                if self._check_collision(obj1, obj2):
                    self._resolve_collision(obj1, obj2)
    
    def _check_collision(self, obj1: PhysicsObject, obj2: PhysicsObject) -> bool:
        pos1 = obj1.get_position()
        pos2 = obj2.get_position()
        distance = (pos2 - pos1).length()
        min_distance = obj1.get_radius() + obj2.get_radius()
        return distance < min_distance
    
    def _resolve_collision(self, obj1: PhysicsObject, obj2: PhysicsObject):
        pos1 = obj1.get_position()
        pos2 = obj2.get_position()
        collision_vector = pos2 - pos1
        distance = collision_vector.length()
        if distance < 0.0001:
            return
        collision_normal = collision_vector / distance
        overlap = (obj1.get_radius() + obj2.get_radius()) - distance
        if overlap > 0:
            if obj1.is_static:
                obj2.set_position(pos2 + collision_normal * overlap)
            elif obj2.is_static:
                obj1.set_position(pos1 - collision_normal * overlap)
            else:
                separation = collision_normal * (overlap / 2)
                obj1.set_position(pos1 - separation)
                obj2.set_position(pos2 + separation)
        
        relative_velocity = obj2.velocity - obj1.velocity
        velocity_along_normal = dot(relative_velocity, collision_normal)
        if velocity_along_normal > 0:
            return
        
        restitution = 0.7
        impulse_magnitude = -(1 + restitution) * velocity_along_normal
        impulse_magnitude /= (1 / obj1.mass + 1 / obj2.mass)
        impulse = collision_normal * impulse_magnitude
        if not obj1.is_static:
            obj1.velocity -= impulse / obj1.mass
        if not obj2.is_static:
            obj2.velocity += impulse / obj2.mass