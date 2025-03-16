execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["CostaudSmurf"],Age:1}
execute as @s at @s store result score Rand CostaudSmurf run data get entity @e[type=area_effect_cloud,tag=CostaudSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand CostaudSmurf %= max CostaudSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=CostaudSmurf]

execute at @s if score Rand CostaudSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b}}
execute at @s if score Rand CostaudSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:2b}}
execute at @s if score Rand CostaudSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:3b}}
execute at @s if score Rand CostaudSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:4b}}
execute at @s if score Rand CostaudSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:5b}}
execute at @s if score Rand CostaudSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:6b}}
execute at @s if score Rand CostaudSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:7b}}
execute at @s if score Rand CostaudSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:8b}}
execute at @s if score Rand CostaudSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:9b}}
execute at @s if score Rand CostaudSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_shovel",Count:1b}}
execute at @s if score Rand CostaudSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_pickaxe",Count:1b}}
execute at @s if score Rand CostaudSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_axe",Count:1b}}
execute at @s if score Rand CostaudSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_sword",Count:1b}}
execute at @s if score Rand CostaudSmurf matches 13 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_hoe",Count:1b}}
execute at @s if score Rand CostaudSmurf matches 14 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_helmet",Count:1b}}
execute at @s if score Rand CostaudSmurf matches 15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chestplate",Count:1b}}
execute at @s if score Rand CostaudSmurf matches 16 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_leggings",Count:1b}}
execute at @s if score Rand CostaudSmurf matches 17 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_boots",Count:1b}}
execute at @s if score Rand CostaudSmurf matches 18 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:anvil",Count:1b}}
