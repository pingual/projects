execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["CoquetSmurf"],Age:1}
execute as @s at @s store result score Rand CoquetSmurf run data get entity @e[type=area_effect_cloud,tag=CoquetSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand CoquetSmurf %= max CoquetSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=CoquetSmurf]
execute at @s if score Rand CoquetSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dandelion",Count:1b}}
execute at @s if score Rand CoquetSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:poppy",Count:1b}}
execute at @s if score Rand CoquetSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:blue_orchid",Count:1b}}
execute at @s if score Rand CoquetSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:allium",Count:1b}}
execute at @s if score Rand CoquetSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:azure_bluet",Count:1b}}
execute at @s if score Rand CoquetSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:red_tulip",Count:1b}}
execute at @s if score Rand CoquetSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:orange_tulip",Count:1b}}
execute at @s if score Rand CoquetSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:white_tulip",Count:1b}}
execute at @s if score Rand CoquetSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:pink_tulip",Count:1b}}
execute at @s if score Rand CoquetSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:oxeye_daisy",Count:1b}}
execute at @s if score Rand CoquetSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sunflower",Count:1b}}
execute at @s if score Rand CoquetSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lilac",Count:1b}}
execute at @s if score Rand CoquetSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:rose_bush",Count:1b}}
execute at @s if score Rand CoquetSmurf matches 13 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:peony",Count:1b}}
execute at @s if score Rand CoquetSmurf matches 14 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cornflower",Count:1b}}
execute at @s if score Rand CoquetSmurf matches 15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lily_of_the_valley",Count:1b}}
execute at @s if score Rand CoquetSmurf matches 16 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wither_rose",Count:1b}}
