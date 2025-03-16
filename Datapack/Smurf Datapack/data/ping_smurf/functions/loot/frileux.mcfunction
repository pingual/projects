execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["FrileuxSmurf"],Age:1}
execute as @s at @s store result score Rand FrileuxSmurf run data get entity @e[type=area_effect_cloud,tag=FrileuxSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand FrileuxSmurf %= max FrileuxSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=FrileuxSmurf]
execute at @s if score Rand FrileuxSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:orange_bed",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:red_bed",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:white_bed",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:green_bed",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lime_bed",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gray_bed",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:light_gray_bed",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:brown_bed",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:yellow_bed",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:pink_bed",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:magenta_bed",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cyan_bed",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:black_bed",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 13 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:blue_bed",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 14 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:light_blue_bed",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:purple_bed",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 16 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:orange_wool",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 17 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:red_wool",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 18 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:white_wool",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 19 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:green_wool",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 20 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lime_wool",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 21 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gray_wool",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 22 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:light_gray_wool",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 23 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:brown_wool",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 24 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:yellow_wool",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 25 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:pink_wool",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 26 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:magenta_wool",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 27 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cyan_wool",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 28 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:black_wool",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 29 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:blue_wool",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 30 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:light_blue_wool",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 31 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:purple_wool",Count:1b}}
execute at @s if score Rand FrileuxSmurf matches 32..48 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:ice",Count:1b}}
