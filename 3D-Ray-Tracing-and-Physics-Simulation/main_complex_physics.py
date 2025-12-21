# main_complex_physics.py
from vec3 import Vec3, Point3, Color
from hittable_list import HittableList
from sphere import Sphere
from box import Box
from camera import Camera
from material import Lambertian, Metal, DiffuseLight
from physics import PhysicsEngine, PhysicsObject
import os
import cv2
import math

FPS = 10
DURATION = 8
TOTAL_FRAMES = FPS * DURATION

aspect_ratio = 16.0 / 9.0
image_width = 200
samples_per_pixel = 50

mat_ground = Metal(Color(0.3, 0.3, 0.3),0)
mat_red = Metal(Color(0.9, 0.1, 0.1),0)
mat_blue = Metal(Color(0.2, 0.5, 0.9), 0.05)
mat_green = Metal(Color(0.1, 0.8, 0.2),0)
mat_yellow = Metal(Color(0.9, 0.9, 0.1), 0.15)
mat_purple = Metal(Color(0.7, 0.2, 0.8), 0.3)
mat_orange = Metal(Color(0.95, 0.5, 0.1),0)
mat_cyan = Metal(Color(0.1, 0.8, 0.8), 0.1)
mat_pink = Metal(Color(0.95, 0.3, 0.6),0)
mat_light = DiffuseLight(Color(1, 0, 0), 16)

world = HittableList()
physics = PhysicsEngine(gravity=12.0, ground_level=-100.5)

ground = Sphere(Point3(0, -100.5, -1), 100, mat_ground)
world.add(ground)
ground_phys = PhysicsObject(ground, mass=float('inf'), is_static=True)
physics.add_object(ground_phys)

tower_x = -2.5
tower_z = -2.0
for i in range(5):
    s = Sphere(Point3(tower_x, 0.4 + i * 0.85, tower_z), 0.4, 
               [mat_red, mat_blue, mat_green, mat_yellow, mat_purple][i])
    world.add(s)
    p = PhysicsObject(s, mass=1.0)
    p.on_ground = (i == 0)
    physics.add_object(p)

domino_materials = [mat_orange, mat_cyan, mat_pink, mat_red, mat_blue]
for i in range(5):
    s = Sphere(Point3(-1.0 + i * 0.9, 0.35, -1.5), 0.35, domino_materials[i])
    world.add(s)
    p = PhysicsObject(s, mass=0.8)
    p.on_ground = True
    physics.add_object(p)

projectile = Sphere(Point3(3.5, 6.0, -1.0), 0.5, mat_purple)
world.add(projectile)
proj_phys = PhysicsObject(projectile, mass=2.0)
proj_phys.velocity = Vec3(-8.0, 0, -1.0)  # Lancé vers la gauche
physics.add_object(proj_phys)

heavy = Sphere(Point3(0.5, 8.0, -2.0), 0.6, mat_yellow)
world.add(heavy)
heavy_phys = PhysicsObject(heavy, mass=3.5)
physics.add_object(heavy_phys)

for i in range(3):
    angle = (i - 1) * 0.3
    small = Sphere(Point3(2.0 + i * 0.5, 5.0 + i * 0.5, -1.0), 0.25, mat_cyan)
    world.add(small)
    small_phys = PhysicsObject(small, mass=0.5)
    small_phys.velocity = Vec3(-6.0 * math.cos(angle), -2.0, -6.0 * math.sin(angle))
    physics.add_object(small_phys)

obstacles = [
    (Point3(-1.5, 0.3, -3.0), 0.3, mat_pink),
    (Point3(1.0, 0.4, -3.5), 0.4, mat_green),
]
for pos, radius, mat in obstacles:
    s = Sphere(pos, radius, mat)
    world.add(s)
    p = PhysicsObject(s, mass=float('inf'), is_static=True)
    physics.add_object(p)

box1 = Box(Point3(-0.5, 7.0, -1.5), 0.7, 0.7, 0.7, mat_orange)
world.add(box1)
box_phys = PhysicsObject(box1, mass=2.0)
box_phys.velocity = Vec3(1.5, 0, 0)
physics.add_object(box_phys)

pyramid_x = 2.0
pyramid_z = -3.0
pyramid_mats = [mat_blue, mat_green, mat_red]
layer = 0
for row in range(3, 0, -1):
    for col in range(row):
        s = Sphere(
            Point3(pyramid_x + (col - row/2) * 0.75, 0.35 + layer * 0.7, pyramid_z),
            0.32,
            pyramid_mats[layer % 3]
        )
        world.add(s)
        p = PhysicsObject(s, mass=0.7)
        p.on_ground = (layer == 0)
        physics.add_object(p)
    layer += 1

light_sphere = Sphere(Point3(0, 4.0, 0.5), 0.5, mat_light)
world.add(light_sphere)
light_phys = PhysicsObject(light_sphere, mass=0.3)
physics.add_object(light_phys)

cam = Camera()
cam.aspect_ratio = aspect_ratio
cam.image_width = image_width
cam.samples_per_pixel = samples_per_pixel
cam.max_depth = 50
cam.vfov = 85
cam.lookfrom = Point3(-1, 3.5, 5)
cam.lookat = Point3(0, 1, -1.5)
cam.vup = Vec3(0, 1, 0)
cam.initialize()

output_dir = "complex_physics_frames11"
os.makedirs(output_dir, exist_ok=True)

dt = 1.0 / FPS
event_log = []

for frame in range(TOTAL_FRAMES):
    t = frame * dt
    
    if frame == int(FPS * 1.0):
        for i, obj in enumerate(physics.objects):
            if isinstance(obj.hittable, Sphere):
                pos = obj.get_position()
                if abs(pos.x() - tower_x) < 0.1 and pos.y() > 1.0:
                    obj.apply_force(Vec3(15, 0, 5))
                    event_log.append(f"T={t:.1f}s: Tower pushed!")
                    break
    
    if frame == int(FPS * 2.0):
        for obj in physics.objects:
            if isinstance(obj.hittable, Sphere):
                pos = obj.get_position()
                if -1.1 < pos.x() < -0.9 and abs(pos.z() + 1.5) < 0.2:
                    obj.apply_force(Vec3(20, 2, 0))
                    event_log.append(f"T={t:.1f}s: Impulsion!")
                    break
    
    if frame == int(FPS * 3.5):
        for obj in physics.objects:
            pos = obj.get_position()
            if abs(pos.x() - pyramid_x) < 1.5 and abs(pos.z() - pyramid_z) < 1.5:
                direction = pos - Point3(pyramid_x, 0, pyramid_z)
                if direction.length() > 0.1:
                    obj.apply_force(direction * 8.0)
        event_log.append(f"T={t:.1f}s: Explosion!")
    
    if frame == int(FPS * 5.0):
        count = 0
        for obj in physics.objects:
            if obj.on_ground and not obj.is_static:
                obj.apply_force(Vec3(0, 8, 0))
                count += 1
        event_log.append(f"T={t:.1f}s: {count} propelled objects!")
    
    if frame == int(FPS * 6.5):
        center = Point3(0, 2, -2)
        for obj in physics.objects:
            if not obj.is_static:
                direction = center - obj.get_position()
                dist = direction.length()
                if dist > 0.1:
                    obj.apply_force(direction * (5.0 / dist))
        event_log.append(f"T={t:.1f}s: Gravitational pull!")
    
    physics.update(dt)
    
    active = sum(1 for o in physics.objects if not o.is_static and o.velocity.length() > 0.1)
    collisions = sum(1 for i, o1 in enumerate(physics.objects) 
                    for o2 in physics.objects[i+1:] 
                    if physics._check_collision(o1, o2))
    
    print(f"\r[{frame+1}/{TOTAL_FRAMES}] T={t:.2f}s | Actifs: {active:2d} | "
          f"Collisions: {collisions:2d} | Events: {len(event_log)}    ", 
          end="", flush=True)
    
    output_file = os.path.join(output_dir, f"frame_{frame:04d}.ppm")
    cam.render(world, output_file=output_file)

output_video = "complex_physics_simulation.mp4"
print(f"Création de la vidéo: {output_video}")

images = sorted([img for img in os.listdir(output_dir) 
                 if img.startswith("frame_") and img.endswith(".ppm")])

if images:
    first = cv2.imread(os.path.join(output_dir, images[0]))
    h, w, _ = first.shape
    
    fourcc = cv2.VideoWriter_fourcc(*"mp4v")
    video = cv2.VideoWriter(output_video, fourcc, FPS, (w, h))
    
    for img in images:
        frame = cv2.imread(os.path.join(output_dir, img))
        video.write(frame)
    
    video.release()
    
else:
    print("Error!")