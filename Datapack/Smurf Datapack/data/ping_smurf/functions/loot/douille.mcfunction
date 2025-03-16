execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["DouilleSmurf"],Age:1}
execute as @s at @s store result score Rand DouilleSmurf run data get entity @e[type=area_effect_cloud,tag=DouilleSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand DouilleSmurf %= max DouilleSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=DouilleSmurf]
execute at @s if score Rand DouilleSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:oak_door",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_door",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:spruce_door",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:birch_door",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:jungle_door",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:acacia_door",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dark_oak_door",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:redstone_lamp",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:flint_and_steel",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:water_bucket",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:glass_pane",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:oak_fence",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:spruce_fence",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 13 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:birch_fence",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 14 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:jungle_fence",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:acacia_fence",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 16 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dark_oak_fence",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 17 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:nether_brick_fence",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 18 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:oak_fence_gate",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 19 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:spruce_fence_gate",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 20 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:birch_fence_gate",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 21 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:jungle_fence_gate",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 22 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dark_oak_fence_gate",Count:1b}}
execute at @s if score Rand DouilleSmurf matches 23 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:acacia_fence_gate",Count:1b}}
