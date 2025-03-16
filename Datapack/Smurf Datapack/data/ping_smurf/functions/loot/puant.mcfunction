execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["PuantSmurf"],Age:1}
execute as @s at @s store result score Rand PuantSmurf run data get entity @e[type=area_effect_cloud,tag=PuantSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand PuantSmurf %= max PuantSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=PuantSmurf]


execute at @s if score Rand PuantSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_helmet",Count:1b,tag:{display:{Name:{"text":"Casque Puant","color":"white","italic":false}},HideFlags:1,Tags:["Puant"],Enchantments:[{id:"minecraft:impaling",lvl:1}]}}}

execute at @s if score Rand PuantSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_chestplate",Count:1b,tag:{display:{Name:{"text":"Plastron Puant","color":"white","italic":false}},HideFlags:1,Tags:["Puant"],Enchantments:[{id:"minecraft:impaling",lvl:1}]}}}

execute at @s if score Rand PuantSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_leggings",Count:1b,tag:{display:{Name:{"text":"Pantalon Puant","color":"white","italic":false}},HideFlags:1,Tags:["Puant"],Enchantments:[{id:"minecraft:impaling",lvl:1}]}}}

execute at @s if score Rand PuantSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_boots",Count:1b,tag:{display:{Name:{"text":"Bottes Puant","color":"white","italic":false}},HideFlags:1,Tags:["Puant"],Enchantments:[{id:"minecraft:impaling",lvl:1}]}}}
