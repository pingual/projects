execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["FatigueSmurf"],Age:1}
execute as @s at @s store result score Rand FatigueSmurf run data get entity @e[type=area_effect_cloud,tag=FatigueSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand FatigueSmurf %= max FatigueSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=FatigueSmurf]
execute at @s if score Rand FatigueSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:orange_bed",Count:1b}}
execute at @s if score Rand FatigueSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:red_bed",Count:1b}}
execute at @s if score Rand FatigueSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:white_bed",Count:1b}}
execute at @s if score Rand FatigueSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:green_bed",Count:1b}}
execute at @s if score Rand FatigueSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lime_bed",Count:1b}}
execute at @s if score Rand FatigueSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gray_bed",Count:1b}}
execute at @s if score Rand FatigueSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:light_gray_bed",Count:1b}}
execute at @s if score Rand FatigueSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:brown_bed",Count:1b}}
execute at @s if score Rand FatigueSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:yellow_bed",Count:1b}}
execute at @s if score Rand FatigueSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:pink_bed",Count:1b}}
execute at @s if score Rand FatigueSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:magenta_bed",Count:1b}}
execute at @s if score Rand FatigueSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cyan_bed",Count:1b}}
execute at @s if score Rand FatigueSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:black_bed",Count:1b}}
execute at @s if score Rand FatigueSmurf matches 13 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:blue_bed",Count:1b}}
execute at @s if score Rand FatigueSmurf matches 14 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:light_blue_bed",Count:1b}}
execute at @s if score Rand FatigueSmurf matches 15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:purple_bed",Count:1b}}
