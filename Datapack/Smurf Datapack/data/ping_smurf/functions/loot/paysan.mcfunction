execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["PaysanSmurf"],Age:1}
execute as @s at @s store result score Rand PaysanSmurf run data get entity @e[type=area_effect_cloud,tag=PaysanSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand PaysanSmurf %= max PaysanSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=PaysanSmurf]

execute at @s if score Rand PaysanSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:carrot",Count:1b}}
execute at @s if score Rand PaysanSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potato",Count:1b}}
execute at @s if score Rand PaysanSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:poisonous_potato",Count:1b}}
execute at @s if score Rand PaysanSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:1b}}
execute at @s if score Rand PaysanSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat_seeds",Count:1b}}
execute at @s if score Rand PaysanSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:pumpkin_seeds",Count:1b}}
execute at @s if score Rand PaysanSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:melon_seeds",Count:1b}}
execute at @s if score Rand PaysanSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:melon",Count:1b}}
execute at @s if score Rand PaysanSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:beetroot_seeds",Count:1b}}
execute at @s if score Rand PaysanSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:beetroot",Count:1b}}
execute at @s if score Rand PaysanSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sugar_cane",Count:1b}}
execute at @s if score Rand PaysanSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:brown_mushroom",Count:1b}}
execute at @s if score Rand PaysanSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:red_mushroom",Count:1b}}
