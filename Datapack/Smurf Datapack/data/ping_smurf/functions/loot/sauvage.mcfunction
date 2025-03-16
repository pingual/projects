execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["SauvageSmurf"],Age:1}
execute as @s at @s store result score Rand SauvageSmurf run data get entity @e[type=area_effect_cloud,tag=SauvageSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand SauvageSmurf %= max SauvageSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=SauvageSmurf]
execute at @s if score Rand SauvageSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:porkchop",Count:1b}}
execute at @s if score Rand SauvageSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cooked_porkchop",Count:1b}}
execute at @s if score Rand SauvageSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chicken",Count:1b}}
execute at @s if score Rand SauvageSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:beef",Count:1b}}
execute at @s if score Rand SauvageSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cooked_chicken",Count:1b}}
execute at @s if score Rand SauvageSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cooked_beef",Count:1b}}
execute at @s if score Rand SauvageSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:rabbit",Count:1b}}
execute at @s if score Rand SauvageSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cooked_rabbit",Count:1b}}
execute at @s if score Rand SauvageSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:rabbit_stew",Count:1b}}
execute at @s if score Rand SauvageSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:mutton",Count:1b}}
execute at @s if score Rand SauvageSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cooked_mutton",Count:1b}}
