execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["TambourSmurf"],Age:1}
execute as @s at @s store result score Rand TambourSmurf run data get entity @e[type=area_effect_cloud,tag=TambourSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand TambourSmurf %= max TambourSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=TambourSmurf]


execute at @s if score Rand TambourSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:written_book",Count:1b,tag:{pages:['{"text":"ALERTE! Gargamel a été schtroumpfé proche du village, schtroumpfs attention!"}'],title:Informations,author:"Le Schtroumpf Tambour"}}}

execute at @s if score Rand TambourSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:written_book",Count:1b,tag:{pages:['{"text":"Le grand schtroumpf a schtroumpfé une nouvelle potion! Il schtroumpf trop bien!"}'],title:Informations,author:"Le Schtroumpf Tambour"}}}

execute at @s if score Rand TambourSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:written_book",Count:1b,tag:{pages:['{"text":"Un humain schtroumpf proche de notre village, il ne schtroumpf pas être schtroumpf!"}'],title:Informations,author:"Le Schtroumpf Tambour"}}}

execute at @s if score Rand TambourSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:written_book",Count:1b,tag:{pages:['{"text":"La schtroumpfette s\'est schtroumpfé la cheville! Il schtroumpf la schtroumpfer!"}'],title:Informations,author:"Le Schtroumpf Tambour"}}}

execute at @s if score Rand TambourSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:written_book",Count:1b,tag:{pages:['{"text":"Finalement, le schtroumpf schtroumpfeur a schtroumpfé toute la journée!"}'],title:Informations,author:"Le Schtroumpf Tambour"}}}

execute at @s if score Rand TambourSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:written_book",Count:1b,tag:{pages:['{"text":"Attention, une espèce inconnue a schtroumpfé nos champs de salsepareille! Elle est schtroumpfement schtroumpf!"}'],title:Informations,author:"Le Schtroumpf Tambour"}}}
