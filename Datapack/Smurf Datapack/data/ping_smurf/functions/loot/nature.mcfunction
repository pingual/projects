execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["NatureSmurf"],Age:1}
execute as @s at @s store result score Rand NatureSmurf run data get entity @e[type=area_effect_cloud,tag=NatureSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand NatureSmurf %= max NatureSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=NatureSmurf]

execute at @s if score Rand NatureSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:melon_block",Count:1b}}
execute at @s if score Rand NatureSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:melon_slive",Count:1b}}
execute at @s if score Rand NatureSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:melon_seeds",Count:1b}}
execute at @s if score Rand NatureSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:carrot",Count:1b}}
execute at @s if score Rand NatureSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:beetroot_seeds",Count:1b}}
execute at @s if score Rand NatureSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:beetroot",Count:1b}}
execute at @s if score Rand NatureSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:poisonous_potato",Count:1b}}
execute at @s if score Rand NatureSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:baked_potato",Count:1b}}
execute at @s if score Rand NatureSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potato",Count:1b}}
execute at @s if score Rand NatureSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:apple",Count:1b}}
execute at @s if score Rand NatureSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat",Count:1b}}
execute at @s if score Rand NatureSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat_seeds",Count:1b}}
execute at @s if score Rand NatureSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:oak_sapling",Count:1b}}
execute at @s if score Rand NatureSmurf matches 13 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dark_oak_sapling",Count:1b}}
execute at @s if score Rand NatureSmurf matches 14 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:acacia_sapling",Count:1b}}
execute at @s if score Rand NatureSmurf matches 15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:jungle_sapling",Count:1b}}
execute at @s if score Rand NatureSmurf matches 16 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:spruce_sapling",Count:1b}}
execute at @s if score Rand NatureSmurf matches 17 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:birch_sapling",Count:1b}}
execute at @s if score Rand NatureSmurf matches 18 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dead_bushes",Count:1b}}
execute at @s if score Rand NatureSmurf matches 19 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:pumpkin",Count:1b}}
execute at @s if score Rand NatureSmurf matches 20 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:carved_pumpkin",Count:1b}}
execute at @s if score Rand NatureSmurf matches 21 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sugar_cane",Count:1b}}
execute at @s if score Rand NatureSmurf matches 22 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:nether_wart",Count:1b}}
execute at @s if score Rand NatureSmurf matches 23 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chorus_flower",Count:1b}}
execute at @s if score Rand NatureSmurf matches 24 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:red_mushroom",Count:1b}}
execute at @s if score Rand NatureSmurf matches 25 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:brown_mushroom",Count:1b}}
execute at @s if score Rand NatureSmurf matches 26 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cactus",Count:1b}}
execute at @s if score Rand NatureSmurf matches 27 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:vine",Count:1b}}
execute at @s if score Rand NatureSmurf matches 28 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:kelp",Count:1b}}
execute at @s if score Rand NatureSmurf matches 29 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:seagrass",Count:1b}}
execute at @s if score Rand NatureSmurf matches 30 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:grass",Count:1b}}
execute at @s if score Rand NatureSmurf matches 31 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tall_grass",Count:1b}}
execute at @s if score Rand NatureSmurf matches 32 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sweet_berries",Count:1b}}
execute at @s if score Rand NatureSmurf matches 33 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dandelion",Count:1b}}
execute at @s if score Rand NatureSmurf matches 34 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:poppy",Count:1b}}
execute at @s if score Rand NatureSmurf matches 35 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:blue_orchid",Count:1b}}
execute at @s if score Rand NatureSmurf matches 36 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:allium",Count:1b}}
execute at @s if score Rand NatureSmurf matches 37 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:azure_bluet",Count:1b}}
execute at @s if score Rand NatureSmurf matches 38 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:red_tulip",Count:1b}}
execute at @s if score Rand NatureSmurf matches 39 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:orange_tulip",Count:1b}}
execute at @s if score Rand NatureSmurf matches 40 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:white_tulip",Count:1b}}
execute at @s if score Rand NatureSmurf matches 41 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:pink_tulip",Count:1b}}
execute at @s if score Rand NatureSmurf matches 42 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:oxeye_daisy",Count:1b}}
execute at @s if score Rand NatureSmurf matches 43 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sunflower",Count:1b}}
execute at @s if score Rand NatureSmurf matches 44 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lilac",Count:1b}}
execute at @s if score Rand NatureSmurf matches 45 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:rose_bush",Count:1b}}
execute at @s if score Rand NatureSmurf matches 46 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:peony",Count:1b}}
execute at @s if score Rand NatureSmurf matches 47 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cornflower",Count:1b}}
execute at @s if score Rand NatureSmurf matches 48 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lily_of_the_valley",Count:1b}}
execute at @s if score Rand NatureSmurf matches 49 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wither_rose",Count:1b}}
