scoreboard players operation @s LongueurMarche += @s Marche
scoreboard players operation @s LongueurMarche += @s Sprint
execute if score @s Jump matches 4.. run scoreboard players add @s DuraBottesHermes 1
execute if score @s Jump matches 4.. run scoreboard players reset @s Jump
execute if score @s LongueurMarche matches 2000.. run scoreboard players add @s DuraBottesHermes 1
execute if score @s LongueurMarche matches 2000.. run scoreboard players reset @s LongueurMarche
execute if score @s DuraBottesHermes matches 99.. run clear @s minecraft:netherite_boots{CustomModelData:1}
execute if score @s DuraBottesHermes matches 99.. run give @s minecraft:netherite_boots{HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"feet",Amount:2,Operation:2,UUID:[I;1010124229,1004664777,1045917488,1585593163]}],display:{Name:'[{"text":"Bottes d\'Hermès","italic":false,"bold":true,"color":"dark_red"}]'},CustomModelData:1,Damage:481} 1
execute if score @s DuraBottesHermes matches 99.. run title @s actionbar ["",{"text":"Les Bottes d'Hermès ","bold":true,"color":"dark_red"},{"text":"n'ont plus de durabilité, mets-les à cuire dans un four avec, comme combustible, un bloc de charbon, puis sneak sur le four!"}]
execute if score @s DuraBottesHermes matches ..99 run scoreboard players set @s DuraAffichage 100
execute if score @s DuraBottesHermes matches ..99 run scoreboard players operation @s DuraAffichage -= @s DuraBottesHermes
execute if score @s DuraBottesHermes matches ..99 run title @s actionbar ["",{"text":"Les Bottes d'Hermès ","bold":true,"color":"dark_red"},{"text":"ont encore "},{"score":{"name":"@s","objective":"DuraAffichage"}},{"text":" de durabilité!"}]