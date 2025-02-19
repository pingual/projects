scoreboard players set max RANDOM 6
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score @s RANDOM run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0]
scoreboard players operation @s RANDOM %= max RANDOM
kill @e[type=area_effect_cloud,tag=random]
data merge entity 00bfe2bc-250f-43c1-9b19-3f3a41f50d7f {Offers:{Recipes:[{buy:{id:acacia_button,Count:1},sell:{id:command_block,Count:1,tag:{display:{Name:'[{"text":"Pièce de 1 francs","italic":false}]'},HideFlags:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],CustomModelData:2}}}]}}
data merge entity @s[scores={RANDOM=0}] {Offers:{Recipes:[{buy:{id:gunpowder,Count:1},sell:{id:command_block,Count:1,tag:{display:{Name:'[{"text":"Pièce de 1 francs","italic":false}]'},HideFlags:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],CustomModelData:2}},maxUses:6}]}}
data merge entity @s[scores={RANDOM=1}] {Offers:{Recipes:[{buy:{id:podzol,Count:3},sell:{id:command_block,Count:3,tag:{display:{Name:'[{"text":"Pièce de 1 francs","italic":false}]'},HideFlags:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],CustomModelData:2}},maxUses:6}]}}
data merge entity @s[scores={RANDOM=2}] {Offers:{Recipes:[{buy:{id:packed_ice,Count:1},sell:{id:command_block,Count:3,tag:{display:{Name:'[{"text":"Pièce de 1 francs","italic":false}]'},HideFlags:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],CustomModelData:2}},maxUses:6}]}}
data merge entity @s[scores={RANDOM=3}] {Offers:{Recipes:[{buy:{id:pufferfish_bucket,Count:1},sell:{id:command_block,Count:1,tag:{display:{Name:'[{"text":"Pièce de 5 francs","italic":false}]'},HideFlags:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],CustomModelData:5}},maxUses:4}]}}
data merge entity @s[scores={RANDOM=4}] {Offers:{Recipes:[{buy:{id:tropical_fish_bucket,Count:1},sell:{id:command_block,Count:1,tag:{display:{Name:'[{"text":"Pièce de 5 francs","italic":false}]'},HideFlags:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],CustomModelData:5}},maxUses:4}]}}
data merge entity @s[scores={RANDOM=5}] {Offers:{Recipes:[{buy:{id:blue_ice,Count:1},sell:{id:command_block,Count:6,tag:{display:{Name:'[{"text":"Pièce de 1 francs","italic":false}]'},HideFlags:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],CustomModelData:2}},maxUses:6}]}}
scoreboard players set @s NombreEchange 1