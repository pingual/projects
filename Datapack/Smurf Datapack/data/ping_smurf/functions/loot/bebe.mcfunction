execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["BebeSmurf"],Age:1}
execute as @s at @s store result score Rand BebeSmurf run data get entity @e[type=area_effect_cloud,tag=BebeSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand BebeSmurf %= max BebeSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=BebeSmurf]

execute at @s if score Rand BebeSmurf matches 0..3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:milk_bucket",Count:1b,tag:{display:{Name:'{"text":"Biberon du Bébé Schtroumpf","color":"white","italic":false}'}}}}
execute at @s if score Rand BebeSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16710652}}}}
execute at @s if score Rand BebeSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16710652}}}}
execute at @s if score Rand BebeSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16710652}}}}
execute at @s if score Rand BebeSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16710652}}}}
