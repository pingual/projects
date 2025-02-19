execute as @a[scores={kits=1..}] at @s run function classes:kits_minecart
scoreboard players reset @a[scores={kits=1..}] kits
execute as @e[tag=MinecartBougePas] run data merge entity @s {Motion:[0,0,0]}
execute as @a[tag=GuerrierCherche] run function classes:trigger
execute as @a[tag=ClasseCherche] run function classes:classe_choix
execute as @a[tag=MageCherche] run function classes:choix_mage
execute as @a[scores={classes.spe=1..},tag=Mage] at @s run function classes:choix_mage_minecart
execute as @a[scores={classes.spe=1..},tag=Guerrier] at @s run function classes:choix_guerrier_minecart
execute as @a[tag=GuerrierCherche] run function classes:choix_guerrier
execute as @a[scores={classes.spe=1..},tag=Aventurier] at @s run function classes:choix_aventurier_minecart
execute as @a[tag=AventurierCherche] run function classes:choix_aventurier
execute as @a[scores={KitCherche=1..}] run function classes:kits
execute as @a[scores={classes=1..}] at @s run function classes:minecart
execute as @a[scores={classes.item=1..}] at @s run function classes:items
execute as @a[scores={Pioche=1..},nbt={SelectedItem:{id:"minecraft:iron_pickaxe",tag:{CustomModelData:1}}}] at @s run function classes:aventurier/pioche
execute as @a[scores={Faux=1..},nbt={SelectedItem:{id:"minecraft:iron_hoe",tag:{CustomModelData:1}}}] at @s run function classes:aventurier/faux
execute as @e[type=horse,tag=ChevalExplorateur] at @s run function classes:aventurier/cheval
execute as @a[tag=Mage,scores={CliqueDroitMage=1..},nbt={SelectedItem:{tag:{Tags:["BaguetteApprenti"]}}}] at @s run function classes:baguette/apprenti
execute as @a[tag=Mage,scores={CliqueDroitMage=1..},nbt={SelectedItem:{tag:{Tags:["BaguetteSoin"]}}}] at @s run function classes:baguette/healer
execute as @a[tag=Mage,scores={classes.heal=1..}] at @s run function classes:baguette/heale
execute as @a[tag=Mage,scores={CliqueDroitMage=1..},nbt={SelectedItem:{tag:{Tags:["BaguetteSupport"]}}}] at @s run function classes:baguette/support
execute as @a[tag=Mage,scores={classes.support=1..}] at @s run function classes:baguette/supporte
execute as @a[tag=Mage,scores={CliqueDroitMage=1..},nbt={SelectedItem:{tag:{Tags:["BaguetteFeu"]}}}] at @s run function classes:baguette/feu
effect give @a[tag=Aventurier] speed 1 0 true
effect give @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe",tag:{CustomModelData:1}}}] mining_fatigue 1 0 true
effect give @a[tag=Guerrier] strength 1 0 true
clear @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{Tags:["AClear"]}}]}] carrot_on_a_stick{Tags:["AClear"]}
clear @a[tag=!Aventurier] fishing_rod{Tags:["CanneAPecheAventurier"]}
clear @a[tag=!Aventurier] iron_pickaxe{Tags:["PiocheMineur"]}
clear @a[tag=!Aventurier] iron_hoe{Tags:["FauxEleveur"]}
clear @a[tag=!Mage] carrot_on_a_stick{Tags:["BaguetteApprenti"]}
clear @a[tag=!Mage] carrot_on_a_stick{Tags:["BaguetteSoin"]}
clear @a[tag=!Mage] carrot_on_a_stick{Tags:["BaguetteSupport"]}
clear @a[tag=!Mage] carrot_on_a_stick{Tags:["BaguetteFeu"]}
clear @a[tag=!Guerrier] shield{Tags:["BouclierTank"]}
clear @a[tag=!Guerrier] bow{Tags:["ArcArcher"]}
clear @a[tag=!Guerrier] netherite_sword{Tags:["DagueAssassin"]}
clear @a minecraft:saddle{Tags:["SelleExplorateur"]}
execute as @a[scores={ApprentiCD=600..}] run scoreboard players reset @s ApprentiCD
execute as @a[scores={ApprentiCD=1..}] run scoreboard players add @s ApprentiCD 1
execute as @a[scores={HealerCD=900..}] run scoreboard players reset @s HealerCD
execute as @a[scores={HealerCD=1..}] run scoreboard players add @s HealerCD 1
execute as @a[scores={SupportCD=3600..}] run scoreboard players reset @s SupportCD
execute as @a[scores={SupportCD=1..}] run scoreboard players add @s SupportCD 1
execute as @a[scores={FeuCD=3600..}] run scoreboard players reset @s FeuCD
execute as @a[scores={FeuCD=1..}] run scoreboard players add @s FeuCD 1
execute as @a[scores={ChevalCD=3600..}] run scoreboard players reset @s ChevalCD
execute as @a[scores={ChevalCD=1..}] run scoreboard players add @s ChevalCD 1
execute as @e[tag=Minecart] run scoreboard players add @s MinecartCD 1
execute as @e[tag=Minecart,scores={MinecartCD=600..}] run data merge entity @s {Items:[]}
execute as @e[tag=Minecart,scores={MinecartCD=600..}] run kill @s
execute as @e[tag=Minecart] at @s unless entity @a[distance=..1] run data merge entity @s {Items:[]}
execute as @e[tag=Minecart] at @s unless entity @a[distance=..1] run kill @s
execute as @a[scores={KitCherche=1..}] at @s unless entity @e[tag=MinecartKits,distance=..1] run scoreboard players reset @s KitCherche
execute as @a[scores={classes.spawn_horse=1..}] at @s run function classes:aventurier/spawn
scoreboard players reset @a classes
scoreboard players reset @a Pioche
scoreboard players reset @a Faux
scoreboard players reset @a classes.item
scoreboard players reset @a CliqueDroitMage
scoreboard players reset @a classes.spe
scoreboard players reset @a classes.spawn_horse
scoreboard players enable @a[scores={Niveau=10..},tag=!Guerrier,tag=!Aventurier,tag=!Mage] classes
scoreboard players enable @a[scores={Niveau=30..},tag=!SpeObtenu] classes.spe
execute as @a unless score @s KitFait matches 1.. run scoreboard players enable @s kits
scoreboard players reset @a[scores={KitFait=1..}] kits
scoreboard players enable @a[tag=Aventurier] classes.item
scoreboard players enable @a[tag=Mage] classes.item
scoreboard players enable @a[tag=Guerrier] classes.item
scoreboard players enable @a[scores={Explorateur=1..}] classes.spawn_horse
execute as @a at @s if entity @e[tag=MinecartKits,distance=..1] unless score @s KitFait matches 1.. run scoreboard players set @s KitCherche 1
execute as @a[tag=!Guerrier,nbt={SelectedItem:{id:"minecraft:enchanted_book",tag:{CustomModelData:1}}}] run effect give @s strength 1 0 true
execute as @a[tag=Guerrier,nbt={SelectedItem:{id:"minecraft:enchanted_book",tag:{CustomModelData:1}}}] run effect give @s strength 1 1 true
execute as @a[nbt={SelectedItem:{id:"minecraft:enchanted_book",tag:{CustomModelData:2}}}] run effect give @s strength 1 2 true
execute as @a[nbt={SelectedItem:{id:"minecraft:enchanted_book",tag:{CustomModelData:3}}}] run effect give @s strength 1 3 true