execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["TailleurVSmurf"],Age:1}
execute as @s at @s store result score Rand TailleurVSmurf run data get entity @e[type=area_effect_cloud,tag=TailleurVSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand TailleurVSmurf %= max TailleurVSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=TailleurVSmurf]
execute at @s if score Rand TailleurVSmurf matches 0..14 run scoreboard players operation Rand TailleurVSmurf += 34 TailleurVSmurf
execute at @s if score Rand TailleurVSmurf matches 15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:white_dye",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 16 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:orange_dye",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 17 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 18 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:green_dye",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 19 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lime_dye",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 20 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:purple_dye",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 21 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:magenta_dye",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 22 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cyan_dye",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 23 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:yellow_dye",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 24 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:light_blue_dye",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 25 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:pink_dye",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 26 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gray_dye",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 27 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:light_gray_dye",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 28 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:blue_dye",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 29 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:brown_dye",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 30..31 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather_helmet",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 32..33 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather_chestplate",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 34..35 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather_leggings",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 36..37 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather_boots",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 38..40 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather",Count:1b}}
execute at @s if score Rand TailleurVSmurf matches 41..42 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather",Count:2b}}
execute at @s if score Rand TailleurVSmurf matches 43..45 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather",Count:3b}}
execute at @s if score Rand TailleurVSmurf matches 46..48 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather",Count:4b}}
