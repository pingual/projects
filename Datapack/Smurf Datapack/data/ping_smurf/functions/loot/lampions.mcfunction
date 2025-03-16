execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["LampionsSmurf"],Age:1}
execute as @s at @s store result score Rand LampionsSmurf run data get entity @e[type=area_effect_cloud,tag=LampionsSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand LampionsSmurf %= max LampionsSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=LampionsSmurf]
execute at @s if score Rand LampionsSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:jack_o_lantern",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sea_lantern",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:redstone_lamp",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:glowstone",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:torch",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:redstone_torch",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:magma_block",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:flint_and_steel",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lava_bucket",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lantern",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sea_pickle",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:conduit",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:end_rod",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 13 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:furnace",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 14 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:redstone_ore",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:repeater",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 17 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:ender_chest",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 18 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:brewing_stand",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 19 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:brown_mushroom",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 20 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dragon_egg",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 21 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:end_portal_frame",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 22 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:beacon",Count:1b}}
execute at @s if score Rand LampionsSmurf matches 23 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sea_pickle",Count:2b}}
execute at @s if score Rand LampionsSmurf matches 24 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sea_pickle",Count:3b}}
execute at @s if score Rand LampionsSmurf matches 16 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sea_pickle",Count:4b}}
