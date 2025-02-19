attribute @s minecraft:generic.max_health base set 20
effect give @s poison 1 1 true
tag @s remove Graal
scoreboard players add @s GraalUse 1
execute as @s[scores={GraalUse=3..}] run clear @s totem_of_undying{CustomModelData:1,Tags:["fonctionne"]} 1
execute as @s[scores={GraalUse=3..}] run give @s minecraft:totem_of_undying{Tags:["casse"],Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],display:{Name:'[{"text":"Le Graal","bold":true,"italic":false,"color":"dark_red"}]'},HideFlags:1,Unbreakable:1,CustomModelData:2} 1