execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["GrandSmurf"],Age:1}
execute as @s at @s store result score Rand GrandSmurf run data get entity @e[type=area_effect_cloud,tag=GrandSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand GrandSmurf %= max GrandSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=GrandSmurf]


