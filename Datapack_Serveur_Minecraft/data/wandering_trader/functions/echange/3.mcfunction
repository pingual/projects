scoreboard players set max RANDOM 5
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score @s RANDOM run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0]
scoreboard players operation @s RANDOM %= max RANDOM
kill @e[type=area_effect_cloud,tag=random]
data modify entity @s[scores={RANDOM=0}] Offers.Recipes prepend value {buy:{id:"minecraft:lily_pad",Count:2b},sell:{id:command_block,Count:1,tag:{display:{Name:'[{"text":"Pièce de 1 francs","italic":false}]'},HideFlags:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],CustomModelData:2}},maxUses:5}
data modify entity @s[scores={RANDOM=1}] Offers.Recipes prepend value {buy:{id:"minecraft:small_dripleaf",Count:2b},sell:{id:command_block,Count:1,tag:{display:{Name:'[{"text":"Pièce de 1 francs","italic":false}]'},HideFlags:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],CustomModelData:2}},maxUses:5}
data modify entity @s[scores={RANDOM=2}] Offers.Recipes prepend value {buy:{id:"minecraft:pointed_dripstone",Count:2b},sell:{id:command_block,Count:1,tag:{display:{Name:'[{"text":"Pièce de 1 francs","italic":false}]'},HideFlags:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],CustomModelData:2}},maxUses:5}
data modify entity @s[scores={RANDOM=3}] Offers.Recipes prepend value {buy:{id:"minecraft:moss_block",Count:2b},sell:{id:command_block,Count:1,tag:{display:{Name:'[{"text":"Pièce de 1 francs","italic":false}]'},HideFlags:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],CustomModelData:2}},maxUses:5}
data modify entity @s[scores={RANDOM=4}] Offers.Recipes prepend value {buy:{id:"minecraft:rooted_dirt",Count:2b},sell:{id:command_block,Count:1,tag:{display:{Name:'[{"text":"Pièce de 1 francs","italic":false}]'},HideFlags:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],CustomModelData:2}},maxUses:5}