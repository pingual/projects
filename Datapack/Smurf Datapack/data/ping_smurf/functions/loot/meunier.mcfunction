execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["MeunierSmurf"],Age:1}
execute as @s at @s store result score Rand MeunierSmurf run data get entity @e[type=area_effect_cloud,tag=MeunierSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand MeunierSmurf %= max MeunierSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=MeunierSmurf]


execute at @s if score Rand MeunierSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:1b}}
execute at @s if score Rand MeunierSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:2b}}
execute at @s if score Rand MeunierSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:3b}}
execute at @s if score Rand MeunierSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:4b}}
execute at @s if score Rand MeunierSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:5b}}
execute at @s if score Rand MeunierSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:6b}}
execute at @s if score Rand MeunierSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:7b}}
execute at @s if score Rand MeunierSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:8b}}
execute at @s if score Rand MeunierSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:9b}}
execute at @s if score Rand MeunierSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:10b}}
execute at @s if score Rand MeunierSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bread",Count:1b}}
execute at @s if score Rand MeunierSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bread",Count:2b}}
execute at @s if score Rand MeunierSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bread",Count:3b}}
execute at @s if score Rand MeunierSmurf matches 13 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bread",Count:4b}}
execute at @s if score Rand MeunierSmurf matches 14 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bread",Count:5b}}
execute at @s if score Rand MeunierSmurf matches 15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bread",Count:6b}}
execute at @s if score Rand MeunierSmurf matches 16 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bread",Count:7b}}
execute at @s if score Rand MeunierSmurf matches 17 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bread",Count:8b}}
execute at @s if score Rand MeunierSmurf matches 18 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bread",Count:9b}}
execute at @s if score Rand MeunierSmurf matches 19 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bread",Count:10b}}
execute at @s if score Rand MeunierSmurf matches 20..21 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:1b}}
execute at @s if score Rand MeunierSmurf matches 22..23 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:2b}}
execute at @s if score Rand MeunierSmurf matches 24..25 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:3b}}
execute at @s if score Rand MeunierSmurf matches 26..27 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:4b}}
execute at @s if score Rand MeunierSmurf matches 28..29 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:5b}}
execute at @s if score Rand MeunierSmurf matches 30..31 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:6b}}
execute at @s if score Rand MeunierSmurf matches 32..33 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:7b}}
execute at @s if score Rand MeunierSmurf matches 34..35 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:8b}}
execute at @s if score Rand MeunierSmurf matches 36..37 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:9b}}
execute at @s if score Rand MeunierSmurf matches 38..39 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:10b}}
