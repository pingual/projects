execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["ForgeronSmurf"],Age:1}
execute as @s at @s store result score Rand ForgeronSmurf run data get entity @e[type=area_effect_cloud,tag=ForgeronSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand ForgeronSmurf %= max ForgeronSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=ForgeronSmurf]

execute at @s if score Rand ForgeronSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b}}
execute at @s if score Rand ForgeronSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:2b}}
execute at @s if score Rand ForgeronSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:3b}}
execute at @s if score Rand ForgeronSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:4b}}
execute at @s if score Rand ForgeronSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:5b}}
execute at @s if score Rand ForgeronSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:6b}}
execute at @s if score Rand ForgeronSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:7b}}
execute at @s if score Rand ForgeronSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:8b}}
execute at @s if score Rand ForgeronSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:9b}}
execute at @s if score Rand ForgeronSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_shovel",Count:1b}}
execute at @s if score Rand ForgeronSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_pickaxe",Count:1b}}
execute at @s if score Rand ForgeronSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_axe",Count:1b}}
execute at @s if score Rand ForgeronSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_sword",Count:1b}}
execute at @s if score Rand ForgeronSmurf matches 13 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b}}
execute at @s if score Rand ForgeronSmurf matches 14 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_helmet",Count:1b}}
execute at @s if score Rand ForgeronSmurf matches 15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chestplate",Count:1b}}
execute at @s if score Rand ForgeronSmurf matches 16 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_leggings",Count:1b}}
execute at @s if score Rand ForgeronSmurf matches 17 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_boots",Count:1b}}
execute at @s if score Rand ForgeronSmurf matches 18 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:anvil",Count:1b}}
