execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["RamoneurSmurf"],Age:1}
execute as @s at @s store result score Rand RamoneurSmurf run data get entity @e[type=area_effect_cloud,tag=RamoneurSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand RamoneurSmurf %= max RamoneurSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=RamoneurSmurf]
execute at @s if score Rand RamoneurSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:flint_and_steel",Count:1b}}
execute at @s if score Rand RamoneurSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherrack",Count:1b}}
execute at @s if score Rand RamoneurSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherrack",Count:2b}}
execute at @s if score Rand RamoneurSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherrack",Count:3b}}
execute at @s if score Rand RamoneurSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherrack",Count:4b}}
execute at @s if score Rand RamoneurSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:0}}}}
execute at @s if score Rand RamoneurSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherrack",Count:1b}}
execute at @s if score Rand RamoneurSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherrack",Count:2b}}
execute at @s if score Rand RamoneurSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherrack",Count:3b}}
execute at @s if score Rand RamoneurSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherrack",Count:4b}}
execute at @s if score Rand RamoneurSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherrack",Count:1b}}
execute at @s if score Rand RamoneurSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherrack",Count:2b}}
execute at @s if score Rand RamoneurSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherrack",Count:3b}}
execute at @s if score Rand RamoneurSmurf matches 13 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherrack",Count:4b}}
execute at @s if score Rand RamoneurSmurf matches 14..15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:flint_and_steel",Count:1b}}
