execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",Count:1b,tag:{CustomModelData:1}}]}] run function item:botte_hermes
execute as @a at @s if block ~ ~ ~ minecraft:water_cauldron if block ~ ~-1 ~ fire unless entity @e[type=area_effect_cloud,tag=ChaudronCuire,distance=..0.5] align xyz run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Duration:2147483647,Tags:["ChaudronCuire"]}
execute as @e[type=area_effect_cloud,tag=ChaudronCuire] at @s run function item:botte_cuire
scoreboard players reset @a Marche
scoreboard players reset @a Sprint
execute as @a[nbt=!{Inventory:[{Slot:100b,id:"minecraft:netherite_boots",Count:1b,tag:{CustomModelData:1}}]}] run scoreboard players reset @s Jump

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1,Damage:0,HideFlags:1,Enchantments:[{lvl:1,id:"minecraft:infinity"}],display:{Name:'[{"text":"Myolnire","bold":true,"italic":false,"color":"dark_red"}]'}}}},scores={CliqueDroit=1..}] at @s if score @s MyolnireCD matches 6001.. run function item:myolnire
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1,Damage:0,HideFlags:1,Enchantments:[{lvl:1,id:"minecraft:infinity"}],display:{Name:'[{"text":"Myolnire","bold":true,"italic":false,"color":"dark_red"}]'}}}},scores={CliqueDroit=1..}] at @s if score @s MyolnireCD matches ..6000 run function item:myolnirecd
execute as @a[scores={MyolnireCD=1..6000}] run scoreboard players add @s MyolnireCD 1
execute as @a[scores={MyolnireCD=6000}] run title @s actionbar "Myolnire est à nouveau chargé!"
scoreboard players reset @a CliqueDroit

execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:1}}}] at @s run attribute @s minecraft:generic.attack_speed base set 3.25
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:1}}}] at @s run attribute @s minecraft:generic.attack_damage base set 2
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:1}}}] at @s run tag @s add ExcaliburUse
execute as @a[tag=ExcaliburUse,nbt=!{SelectedItem:{id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:1}}}] run attribute @s minecraft:generic.attack_speed base set 4
execute as @a[tag=ExcaliburUse,nbt=!{SelectedItem:{id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:1}}}] run attribute @s minecraft:generic.attack_damage base set 1
execute as @a[tag=ExcaliburUse,nbt=!{SelectedItem:{id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:1}}}] run tag @s remove ExcaliburUse
scoreboard players add @a ExcaliburReset 1
scoreboard players reset @a[scores={DegatDonne=1..}] ExcaliburReset
scoreboard players reset @a[scores={DegatPris=1..}] ExcaliburReset
scoreboard players reset @a[scores={ExcaliburReset=3000..}] CompteExcalibur

execute at @e[type=trident,nbt={Trident:{id:"minecraft:trident",tag:{CustomModelData:1}}}] as @a[scores={Degat=1..},distance=..3] at @a[tag=Poseidon] unless score @s PoseidonCoolDown matches 5.. run function item:trident
tag @a[nbt={SelectedItem:{id:"minecraft:trident",Count:1b,tag:{CustomModelData:1}}}] add Poseidon
scoreboard players add @a[nbt=!{SelectedItem:{id:"minecraft:trident",Count:1b,tag:{CustomModelData:1}}}] PoseidonRemove 1
scoreboard players reset @a[nbt={SelectedItem:{id:"minecraft:trident",Count:1b,tag:{CustomModelData:1}}}] PoseidonRemove
tag @a[scores={PoseidonRemove=1200..}] remove Poseidon
scoreboard players reset @a[tag=!Poseidon] PoseidonRemove
scoreboard players add @a[scores={PoseidonCoolDown=1..}] PoseidonCDTimer 1
scoreboard players reset @a[scores={PoseidonCDTimer=72000..}] PoseidonCoolDown
scoreboard players reset @a[scores={PoseidonCDTimer=72000..}] PoseidonCDTimer
scoreboard players reset @a Degat

execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{CustomModelData:1,Tags:["fonctionne"]}}]}] run function item:graal
execute as @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{CustomModelData:1}}]},tag=Graal] run function item:graal_remove

hiddenarmor hide @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:command_block",Count:1b,tag:{CustomModelData:1}}]},scores={Anneau=1200..}]
scoreboard players set @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:command_block",Count:1b,tag:{CustomModelData:1}}]},scores={Anneau=1200..}] Anneau 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:command_block",Count:1b,tag:{CustomModelData:1}}]}] unless score @s Anneau matches 1.. run function item:anneau_debut
scoreboard players add @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:command_block",Count:1b,tag:{CustomModelData:1}}]},scores={Anneau=1..}] Anneau 1
hiddenarmor show @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:command_block",Count:1b,tag:{CustomModelData:1}}]},scores={Anneau=1200..}]
scoreboard players reset @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:command_block",Count:1b,tag:{CustomModelData:1}}]},scores={Anneau=1200..}] Anneau

execute as @e[type=chicken,tag=Wings] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:egg",Count:1b}},distance=..0.5] run function item:poulet
execute as @e[type=chicken,tag=Wings] store result score @s EggWings run data get entity @s EggLayTime
execute as @e[type=chicken,tag=Wings,scores={EggWings=151..}] run data modify entity @s EggLayTime set value 150
execute as @a[scores={KillPoulet=500..}] unless score @s WingsObtain matches 1.. run tellraw @s "Tu viens d'obtenir le poulet explosif!"
execute as @a[scores={KillPoulet=500..}] unless score @s WingsObtain matches 1.. run scoreboard players set @s WingsObtain 1
execute as @a[scores={LanceOeufs=5..}] if score @s WingsObtain matches 1.. unless score @s WingsCD matches 1.. run scoreboard players set @s WingsCD 1
execute as @a[scores={LanceOeufs=5..}] if score @s WingsObtain matches 1.. unless score @s WingsCD matches 1.. run scoreboard players reset @s OeufCD
execute as @a[scores={LanceOeufs=5..}] if score @s WingsObtain matches 1.. unless score @s WingsCD matches 1.. run scoreboard players reset @s LanceOeufs
execute as @a[scores={LanceOeufs=1..4}] if score @s WingsObtain matches 1.. unless score @s OeufCD matches 1.. run scoreboard players set @s OeufCD 1
execute as @a[scores={WingsCD=1..}] if score @s WingsObtain matches 1.. run scoreboard players add @s WingsCD 1
execute as @a[scores={WingsCD=1..}] if score @s WingsObtain matches 1.. run scoreboard players set @s WingsSec 1200
execute as @a[scores={WingsCD=1..}] if score @s WingsObtain matches 1.. run scoreboard players operation @s WingsSec -= @s WingsCD
execute as @a[scores={WingsCD=1..}] if score @s WingsObtain matches 1.. run scoreboard players operation @s WingsSec /= 20 WingsSec
execute as @a[scores={WingsCD=1..}] if score @s WingsObtain matches 1.. run title @s actionbar ["",{"text":"Il reste "},{"score":{"name":"@s","objective":"WingsSec"}},{"text":" secondes!"}]
execute as @a[scores={OeufCD=1..}] if score @s WingsObtain matches 1.. run scoreboard players add @s OeufCD 1
execute as @a[scores={WingsCD=1200..}] if score @s WingsObtain matches 1.. at @s run tellraw @s "Un poulet explosif vient d'apparaître!"
execute as @a[scores={WingsCD=1200..}] if score @s WingsObtain matches 1.. at @s run summon chicken ~ ~ ~ {Tags:["Wings"]}
execute as @a[scores={WingsCD=1200..}] if score @s WingsObtain matches 1.. run scoreboard players reset @s WingsCD
execute as @a[scores={OeufCD=300..}] if score @s WingsObtain matches 1.. at @s run tellraw @s "Lancage d'oeufs réinitialisé!"
execute as @a[scores={OeufCD=300..}] if score @s WingsObtain matches 1.. at @s run scoreboard players reset @s LanceOeufs
execute as @a[scores={OeufCD=300..}] if score @s WingsObtain matches 1.. run scoreboard players reset @s OeufCD
execute as @a[scores={LanceOeufs=1..}] unless score @s WingsObtain matches 1.. run scoreboard players reset @s LanceOeufs

execute as @a[scores={BoussoleCliqueDroit=1..}] run function item:boussole
scoreboard players reset @a[scores={BoussoleCliqueDroit=1..}] BoussoleCliqueDroit