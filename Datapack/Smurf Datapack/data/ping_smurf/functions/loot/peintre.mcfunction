execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["PeintreSmurf"],Age:1}
execute as @s at @s store result score Rand PeintreSmurf run data get entity @e[type=area_effect_cloud,tag=PeintreSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand PeintreSmurf %= max PeintreSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=PeintreSmurf]

execute at @s if score Rand PeintreSmurf matches 0..16 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:painting",Count:1b}}
execute at @s if score Rand PeintreSmurf matches 17 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b}}
execute at @s if score Rand PeintreSmurf matches 18 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:black_dye",Count:1b}}
execute at @s if score Rand PeintreSmurf matches 19 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:1b}}
execute at @s if score Rand PeintreSmurf matches 20 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:green_dye",Count:1b}}
execute at @s if score Rand PeintreSmurf matches 21 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:brown_dye",Count:1b}}
execute at @s if score Rand PeintreSmurf matches 22 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:blue_dye",Count:1b}}
execute at @s if score Rand PeintreSmurf matches 23 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:purple_dye",Count:1b}}
execute at @s if score Rand PeintreSmurf matches 24 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cyan_dye",Count:1b}}
execute at @s if score Rand PeintreSmurf matches 25 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:light_gray_dye",Count:1b}}
execute at @s if score Rand PeintreSmurf matches 26 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gray_dye",Count:1b}}
execute at @s if score Rand PeintreSmurf matches 27 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:pink_dye",Count:1b}}
execute at @s if score Rand PeintreSmurf matches 28 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lime_dye",Count:1b}}
execute at @s if score Rand PeintreSmurf matches 29 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:yellow_dye",Count:1b}}
execute at @s if score Rand PeintreSmurf matches 30 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:light_blue_dye",Count:1b}}
execute at @s if score Rand PeintreSmurf matches 31 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:magenta_dye",Count:1b}}
execute at @s if score Rand PeintreSmurf matches 32 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:orange_dye",Count:1b}}
execute at @s if score Rand PeintreSmurf matches 33 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:white_dye",Count:1b}}
