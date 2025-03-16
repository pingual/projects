execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["ApprentiSmurf"],Age:1}
execute as @s at @s store result score Rand ApprentiSmurf run data get entity @e[type=area_effect_cloud,tag=ApprentiSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand ApprentiSmurf %= max ApprentiSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=ApprentiSmurf]
execute at @s if score Rand ApprentiSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:nether_wart",Count:1b}}
execute at @s if score Rand ApprentiSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gunpowder",Count:1b}}
execute at @s if score Rand ApprentiSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sugar",Count:1b}}
execute at @s if score Rand ApprentiSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:rabbit_foot",Count:1b}}
execute at @s if score Rand ApprentiSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:blaze_powder",Count:1b}}
execute at @s if score Rand ApprentiSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:glistering_melon_slice",Count:1b}}
execute at @s if score Rand ApprentiSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:spider_eye",Count:1b}}
execute at @s if score Rand ApprentiSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:ghast_tear",Count:1b}}
execute at @s if score Rand ApprentiSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:magma_cream",Count:1b}}
execute at @s if score Rand ApprentiSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:pufferfish",Count:1b}}
execute at @s if score Rand ApprentiSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_carrot",Count:1b}}
execute at @s if score Rand ApprentiSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:fermented_spider_eye",Count:1b}}
execute at @s if score Rand ApprentiSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:redstone",Count:1b}}
execute at @s if score Rand ApprentiSmurf matches 13 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:glowstone_dust",Count:1b}}
execute at @s if score Rand ApprentiSmurf matches 14 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:blaze_powder",Count:2b}}
execute at @s if score Rand ApprentiSmurf matches 15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:blaze_powder",Count:4b}}
execute at @s if score Rand ApprentiSmurf matches 16 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:blaze_powder",Count:6b}}
