execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["BucheronSmurf"],Age:1}
execute as @s at @s store result score Rand BucheronSmurf run data get entity @e[type=area_effect_cloud,tag=BucheronSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand BucheronSmurf %= max BucheronSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=BucheronSmurf]
execute at @s if score Rand BucheronSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wooden_axe",Count:1b}}
execute at @s if score Rand BucheronSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone_axe",Count:1b}}
execute at @s if score Rand BucheronSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_axe",Count:1b}}
execute at @s if score Rand BucheronSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_axe",Count:1b}}
execute at @s if score Rand BucheronSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:oak_log",Count:1b}}
execute at @s if score Rand BucheronSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:birch_log",Count:1b}}
execute at @s if score Rand BucheronSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:jungle_log",Count:1b}}
execute at @s if score Rand BucheronSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:acacia_log",Count:1b}}
execute at @s if score Rand BucheronSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dark_oak_log",Count:1b}}
execute at @s if score Rand BucheronSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:oak_log",Count:2b}}
execute at @s if score Rand BucheronSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:birch_log",Count:2b}}
execute at @s if score Rand BucheronSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:jungle_log",Count:2b}}
execute at @s if score Rand BucheronSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:acacia_log",Count:2b}}
execute at @s if score Rand BucheronSmurf matches 13 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dark_oak_log",Count:2b}}
execute at @s if score Rand BucheronSmurf matches 14 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:oak_log",Count:3b}}
execute at @s if score Rand BucheronSmurf matches 15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:birch_log",Count:3b}}
execute at @s if score Rand BucheronSmurf matches 16 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:jungle_log",Count:3b}}
execute at @s if score Rand BucheronSmurf matches 17 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:acacia_log",Count:3b}}
execute at @s if score Rand BucheronSmurf matches 18 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dark_oak_log",Count:3b}}
execute at @s if score Rand BucheronSmurf matches 19 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:oak_log",Count:4b}}
execute at @s if score Rand BucheronSmurf matches 20 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:birch_log",Count:4b}}
execute at @s if score Rand BucheronSmurf matches 21 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:jungle_log",Count:4b}}
execute at @s if score Rand BucheronSmurf matches 22 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:acacia_log",Count:4b}}
execute at @s if score Rand BucheronSmurf matches 23 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dark_oak_log",Count:4b}}
execute at @s if score Rand BucheronSmurf matches 24 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:spruce_log",Count:1b}}
execute at @s if score Rand BucheronSmurf matches 25 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:spruce_log",Count:2b}}
execute at @s if score Rand BucheronSmurf matches 26 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:spruce_log",Count:3b}}
execute at @s if score Rand BucheronSmurf matches 27 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:spruce_log",Count:4b}}
