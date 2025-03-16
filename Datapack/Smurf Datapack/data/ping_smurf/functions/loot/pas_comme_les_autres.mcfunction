execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["PasAutresSmurf"],Age:1}
execute as @s at @s store result score Rand PasAutresSmurf run data get entity @e[type=area_effect_cloud,tag=PasAutresSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand PasAutresSmurf %= max PasAutresSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=PasAutresSmurf]

execute at @s if score Rand PasAutresSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:oak_boat",Count:1b}}
execute at @s if score Rand PasAutresSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:spruce_boat",Count:1b}}
execute at @s if score Rand PasAutresSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:birch_boat",Count:1b}}
execute at @s if score Rand PasAutresSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:jungle_boat",Count:1b}}
execute at @s if score Rand PasAutresSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:acacia_boat",Count:1b}}
execute at @s if score Rand PasAutresSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dark_oak_boat",Count:1b}}
execute at @s if score Rand PasAutresSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b}}
execute at @s if score Rand PasAutresSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:saddle",Count:1b}}
execute at @s if score Rand PasAutresSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:minecart",Count:1b}}
execute at @s if score Rand PasAutresSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chest_minecart",Count:1b}}
execute at @s if score Rand PasAutresSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:furnace_minecart",Count:1b}}
execute at @s if score Rand PasAutresSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tnt_minecart",Count:1b}}
execute at @s if score Rand PasAutresSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:hopper_minecart",Count:1b}}
execute at @s if score Rand PasAutresSmurf matches 13 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:powered_rail",Count:3b}}
execute at @s if score Rand PasAutresSmurf matches 14 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:detector_rail",Count:3b}}
execute at @s if score Rand PasAutresSmurf matches 15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:rail",Count:3b}}
execute at @s if score Rand PasAutresSmurf matches 16 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:activator_rail",Count:3b}}
execute at @s if score Rand PasAutresSmurf matches 17 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:powered_rail",Count:4b}}
execute at @s if score Rand PasAutresSmurf matches 18 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:detector_rail",Count:4b}}
execute at @s if score Rand PasAutresSmurf matches 19 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:rail",Count:4b}}
execute at @s if score Rand PasAutresSmurf matches 20 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:activator_rail",Count:4b}}
execute at @s if score Rand PasAutresSmurf matches 21 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:powered_rail",Count:5b}}
execute at @s if score Rand PasAutresSmurf matches 22 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:detector_rail",Count:5b}}
execute at @s if score Rand PasAutresSmurf matches 23 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:rail",Count:5b}}
execute at @s if score Rand PasAutresSmurf matches 24 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:activator_rail",Count:5b}}
execute at @s if score Rand PasAutresSmurf matches 25 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:powered_rail",Count:6b}}
execute at @s if score Rand PasAutresSmurf matches 26 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:detector_rail",Count:6b}}
execute at @s if score Rand PasAutresSmurf matches 27 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:rail",Count:6b}}
execute at @s if score Rand PasAutresSmurf matches 28 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:activator_rail",Count:6b}}
execute at @s if score Rand PasAutresSmurf matches 29 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:powered_rail",Count:1b}}
execute at @s if score Rand PasAutresSmurf matches 30 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:detector_rail",Count:1b}}
execute at @s if score Rand PasAutresSmurf matches 31 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:rail",Count:1b}}
execute at @s if score Rand PasAutresSmurf matches 32 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:activator_rail",Count:1b}}
