particle minecraft:bubble ~ ~0.5 ~ 0.1 0 0.1 0.00000001 20 normal
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap"}},distance=..0.5] at @s if block ~ ~ ~ water_cauldron as @e[type=item,nbt={Item:{id:"minecraft:netherite_boots",Count:1b,tag:{CustomModelData:1}}},distance=..0.5] at @s if block ~ ~ ~ water_cauldron run tag @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap"}},distance=..0.5,limit=1] add AKillBH
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap"}},distance=..0.5] at @s if block ~ ~ ~ water_cauldron as @e[type=item,nbt={Item:{id:"minecraft:netherite_boots",Count:1b,tag:{CustomModelData:1}}},distance=..0.5] at @s if block ~ ~ ~ water_cauldron run tag @s add AKillBH
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap"}},distance=..0.5] at @s if block ~ ~ ~ water_cauldron as @e[type=item,nbt={Item:{id:"minecraft:netherite_boots",Count:1b,tag:{CustomModelData:1}}},distance=..0.5] at @s if block ~ ~ ~ water_cauldron run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_boots",Count:1b,tag:{CustomModelData:1,HideFlags:1,Enchantments: [{lvl: 1, id: "minecraft:infinity"}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"feet",Amount:2,Operation:2,UUID:[I;1010124229,1004664777,1045917488,1585593163]}],display:{Name:'[{"text":"Bottes d\'Hermès","italic":false,"bold":true,"color":"dark_red"}]'}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap"}},distance=..0.5] at @s if block ~ ~ ~ water_cauldron as @e[type=item,nbt={Item:{id:"minecraft:netherite_boots",Count:1b,tag:{CustomModelData:1}}},distance=..0.5] at @s if block ~ ~ ~ water_cauldron run particle flash ~ ~ ~ 0 0 0 0.0000001 10 normal
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap"}},distance=..0.5] at @s if block ~ ~ ~ water_cauldron as @e[type=item,nbt={Item:{id:"minecraft:netherite_boots",Count:1b,tag:{CustomModelData:1}}},distance=..0.5] at @s if block ~ ~ ~ water_cauldron run scoreboard players set @a DuraBottesHermes 0
kill @e[tag=AKillBH]