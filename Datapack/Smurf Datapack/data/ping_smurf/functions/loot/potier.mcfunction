execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["PotierSmurf"],Age:1}
execute as @s at @s store result score Rand PotierSmurf run data get entity @e[type=area_effect_cloud,tag=PotierSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand PotierSmurf %= max PotierSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=PotierSmurf]
execute at @s if score Rand PotierSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:flower_pot",Count:1b}}
execute at @s if score Rand PotierSmurf matches 1..3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clay",Count:1b}}
execute at @s if score Rand PotierSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clay",Count:2b}}
execute at @s if score Rand PotierSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clay_ball",Count:1b}}
execute at @s if score Rand PotierSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clay_ball",Count:2b}}
execute at @s if score Rand PotierSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clay_ball",Count:3b}}
execute at @s if score Rand PotierSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clay_ball",Count:4b}}
execute at @s if score Rand PotierSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:flower_pot",Count:1b}}
