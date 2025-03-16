advancement revoke @s only ping_smurf:root
recipe take @s ping_smurf:pierre_philosophale
give @s minecraft:ghast_tear{Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],display:{Name:'{"text":"Pierre Philosophale","color":"white","italic":false}'},HideFlags:1} 1
clear @s knowledge_book 1
execute as @s at @s run particle minecraft:enchant ~ ~ ~ 0.5 1 0.5 10 7500 normal @a
execute as @s at @s run particle minecraft:totem_of_undying ~ ~ ~ 0.5 0.5 0.5 1 100 normal @a
execute as @s at @s run particle minecraft:witch ~ ~ ~ 0.5 0.5 0.5 1 100 normal @a
