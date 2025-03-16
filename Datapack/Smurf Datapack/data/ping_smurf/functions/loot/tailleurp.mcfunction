execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["TailleurPSmurf"],Age:1}
execute as @s at @s store result score Rand TailleurPSmurf run data get entity @e[type=area_effect_cloud,tag=TailleurPSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand TailleurPSmurf %= max TailleurPSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=TailleurPSmurf]

execute at @s if score Rand TailleurPSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b}}
execute at @s if score Rand TailleurPSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cobblestone",Count:1b}}
execute at @s if score Rand TailleurPSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone_slab",Count:1b}}
execute at @s if score Rand TailleurPSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:smooth_stone_slab",Count:1b}}
execute at @s if score Rand TailleurPSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cobblestone_slab",Count:1b}}
execute at @s if score Rand TailleurPSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone_brick_slab",Count:1b}}
execute at @s if score Rand TailleurPSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:mossy_stone_brick_slab",Count:1b}}
execute at @s if score Rand TailleurPSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cobblestone_stairs",Count:1b}}
execute at @s if score Rand TailleurPSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone_brick_stairs",Count:1b}}
execute at @s if score Rand TailleurPSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone_stairs",Count:1b}}
execute at @s if score Rand TailleurPSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone_bricks",Count:1b}}
execute at @s if score Rand TailleurPSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cracked_stone_bricks",Count:1b}}
execute at @s if score Rand TailleurPSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:mossy_stone_bricks",Count:1b}}
execute at @s if score Rand TailleurPSmurf matches 13 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chiseled_stone_bricks",Count:1b}}
execute at @s if score Rand TailleurPSmurf matches 14 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cobblestone_wall",Count:1b}}
execute at @s if score Rand TailleurPSmurf matches 15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:mossy_cobblestone_wall",Count:1b}}
execute at @s if score Rand TailleurPSmurf matches 16 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone_brick_wall",Count:1b}}
execute at @s if score Rand TailleurPSmurf matches 17 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:mossy_stone_brick_wall",Count:1b}}
