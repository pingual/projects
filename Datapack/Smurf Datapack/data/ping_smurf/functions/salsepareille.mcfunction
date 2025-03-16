execute as @e[type=item,nbt={Item:{id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}}}] at @s if block ~ ~-0.005 ~ mycelium run function ping_smurf:salspawn
execute at @e[tag=Salsepareille,type=area_effect_cloud] run setblock ~ ~-1 ~ coarse_dirt
execute as @e[tag=Salsepareille,type=area_effect_cloud] at @s unless entity @e[tag=Salsepareille2,distance=..1] run scoreboard players add @s Salsepareille 1
execute as @e[tag=Salsepareille,type=area_effect_cloud,scores={Salsepareille=4000..}] at @s run summon armor_stand ~0.025 ~-1 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{id:"dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}}],DisabledSlots:2039582,Pose:{LeftArm:[0f,87f,35f]},Tags:["Salsepareille","Salsepareille2"],Rotation:[180f]}
execute as @e[tag=Salsepareille,type=area_effect_cloud,scores={Salsepareille=4000..}] run scoreboard players reset @s Salsepareille
execute as @e[tag=Salsepareille,type=area_effect_cloud] at @s unless entity @e[distance=..1,type=!area_effect_cloud,type=!player] run setblock ~ ~-1 ~ mycelium
execute as @e[tag=Salsepareille,type=area_effect_cloud] at @s unless entity @e[distance=..1,type=!area_effect_cloud,type=!player] run kill @s
execute as @e[tag=Salsepareille,type=minecraft:armor_stand,nbt=!{HandItems:[{},{id:"minecraft:dried_kelp",Count:1b}]}] run kill @s
