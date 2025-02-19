execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots",Count:1b},{Slot:101b,id:"minecraft:chainmail_leggings",Count:1b},{Slot:102b,id:"minecraft:chainmail_chestplate",Count:1b},{Slot:103b,id:"minecraft:chainmail_helmet",Count:1b}]}] unless score @s ArmureMaille matches 1.. run function new_advancements:advancement/maille

execute as @a[nbt={Inventory:[{Slot:0b,id:"minecraft:clock"},{Slot:1b,id:"minecraft:clock"},{Slot:2b,id:"minecraft:clock"},{Slot:3b,id:"minecraft:clock"},{Slot:4b,id:"minecraft:clock"},{Slot:5b,id:"minecraft:clock"},{Slot:6b,id:"minecraft:clock"},{Slot:7b,id:"minecraft:clock"},{Slot:8b,id:"minecraft:clock"},{Slot:9b,id:"minecraft:clock"},{Slot:10b,id:"minecraft:clock"},{Slot:11b,id:"minecraft:clock"},{Slot:12b,id:"minecraft:clock"},{Slot:13b,id:"minecraft:clock"},{Slot:14b,id:"minecraft:clock"},{Slot:15b,id:"minecraft:clock"},{Slot:16b,id:"minecraft:clock"},{Slot:17b,id:"minecraft:clock"},{Slot:18b,id:"minecraft:clock"},{Slot:19b,id:"minecraft:clock"},{Slot:20b,id:"minecraft:clock"},{Slot:21b,id:"minecraft:clock"},{Slot:22b,id:"minecraft:clock"},{Slot:23b,id:"minecraft:clock"},{Slot:24b,id:"minecraft:clock"},{Slot:25b,id:"minecraft:clock"},{Slot:26b,id:"minecraft:clock"},{Slot:27b,id:"minecraft:clock"},{Slot:28b,id:"minecraft:clock"},{Slot:29b,id:"minecraft:clock"},{Slot:30b,id:"minecraft:clock"},{Slot:31b,id:"minecraft:clock"},{Slot:32b,id:"minecraft:clock"},{Slot:33b,id:"minecraft:clock"},{Slot:34b,id:"minecraft:clock"},{Slot:35b,id:"minecraft:clock"},{Slot:-106b,id:"minecraft:clock"}]}] unless score @s TimeTime matches 1.. run function new_advancements:advancement/timetime
execute as @a[scores={TimeTimeJoue=1..}] run scoreboard players add @s TimeTimeJoue 1
execute as @a[scores={TimeTimeJoue=601..}] run scoreboard players reset @s TimeTimeJoue
execute as @a[nbt={Inventory:[{Slot:0b,id:"minecraft:clock"},{Slot:1b,id:"minecraft:clock"},{Slot:2b,id:"minecraft:clock"},{Slot:3b,id:"minecraft:clock"},{Slot:4b,id:"minecraft:clock"},{Slot:5b,id:"minecraft:clock"},{Slot:6b,id:"minecraft:clock"},{Slot:7b,id:"minecraft:clock"},{Slot:8b,id:"minecraft:clock"},{Slot:9b,id:"minecraft:clock"},{Slot:10b,id:"minecraft:clock"},{Slot:11b,id:"minecraft:clock"},{Slot:12b,id:"minecraft:clock"},{Slot:13b,id:"minecraft:clock"},{Slot:14b,id:"minecraft:clock"},{Slot:15b,id:"minecraft:clock"},{Slot:16b,id:"minecraft:clock"},{Slot:17b,id:"minecraft:clock"},{Slot:18b,id:"minecraft:clock"},{Slot:19b,id:"minecraft:clock"},{Slot:20b,id:"minecraft:clock"},{Slot:21b,id:"minecraft:clock"},{Slot:22b,id:"minecraft:clock"},{Slot:23b,id:"minecraft:clock"},{Slot:24b,id:"minecraft:clock"},{Slot:25b,id:"minecraft:clock"},{Slot:26b,id:"minecraft:clock"},{Slot:27b,id:"minecraft:clock"},{Slot:28b,id:"minecraft:clock"},{Slot:29b,id:"minecraft:clock"},{Slot:30b,id:"minecraft:clock"},{Slot:31b,id:"minecraft:clock"},{Slot:32b,id:"minecraft:clock"},{Slot:33b,id:"minecraft:clock"},{Slot:34b,id:"minecraft:clock"},{Slot:35b,id:"minecraft:clock"},{Slot:-106b,id:"minecraft:clock"}]}] unless score @s TimeTime matches 1.. run function new_advancements:advancement/timetimejoue

execute as @a[scores={Bateau=1..}] run function new_advancements:advancement/dejavu
execute as @a[scores={DejaVuJoue=1..}] run function new_advancements:advancement/dejavujoue
execute as @a[scores={DejaVuJoue=580..}] run scoreboard players reset @s DejaVuJoue

execute as @a[scores={KillChauveSouris=38..}] unless score @s ChauveSouris matches 1.. run function new_advancements:advancement/chauvesouris

execute as @a[nbt={Inventory:[{id:"minecraft:netherite_boots",tag:{CustomModelData:1}},{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}},{id:"minecraft:netherite_sword",tag:{CustomModelData:1}},{id:"minecraft:trident",tag:{CustomModelData:1}},{id:"minecraft:totem_of_undying",tag:{CustomModelData:1}},{id:"minecraft:command_block",tag:{CustomModelData:1}}]}] unless score @s Legendaire matches 1.. run function new_advancements:advancement/legendaire

execute as @a[nbt={Inventory:[{id:"minecraft:netherite_block"}]}] unless score @s Stonks matches 1.. run function new_advancements:advancement/stonks

execute as @a[scores={KillVillageois=200..}] unless score @s Exterminateur matches 1.. run function new_advancements:advancement/exterminateur

execute as @a[nbt={Inventory:[{id:"minecraft:spectral_arrow"},{id:"minecraft:arrow"},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:night_vision"}},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:invisibility"}},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:leaping"}},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:fire_resistance"}},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:swiftness"}},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:slowness"}},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:turtle_master"}},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:healing"}},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:harming"}},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:poison"}},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:regeneration"}},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:strength"}},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:weakness"}},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:luck"}},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:slow_falling"}},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:water_breathing"}}]}] unless score @s ArcherMotive matches 1.. run function new_advancements:advancement/archer

execute at @e[type=fox,nbt={HandItems:[{id:"minecraft:totem_of_undying",Count:1b}]},tag=!RenardTotem] as @p unless score @s TotemRenard matches 1.. run function new_advancements:advancement/totemrenard
tag @e[type=fox,nbt={HandItems:[{id:"minecraft:totem_of_undying",Count:1b}]},tag=!RenardTotem] add RenardTotem

execute at @e[type=zombie,nbt={HandItems:[{id:"minecraft:bread",Count:1b},{}]},tag=!ZombiePain] as @p unless score @s ZombiePain matches 1.. run function new_advancements:advancement/zombiepain
tag @e[type=zombie,nbt={HandItems:[{id:"minecraft:bread",Count:1b},{}]},tag=!ZombiePain] add ZombiePain
execute as @e[type=zombie,tag=!Ramasse] run data modify entity @s CanPickUpLoot set value 1b
tag @e[type=zombie,tag=!Ramasse] add Ramasse 

execute as @a[scores={CharbonDeepslate=1..}] run function new_advancements:advancement/charbondeepslate
execute as @a[scores={FerDeepslate=1..}] run function new_advancements:advancement/ferdeepslate
execute as @a[scores={OrDeepslate=1..}] run function new_advancements:advancement/ordeepslate
execute as @a[scores={OrNether=1..}] run function new_advancements:advancement/ornether
execute as @a[scores={CuivreDeepslate=1..}] run function new_advancements:advancement/cuivredeepslate
execute as @a[scores={EmeraudeDeepslate=1..}] run function new_advancements:advancement/emeraudedeepslate
execute as @a[scores={DiamantDeepslate=1..}] run function new_advancements:advancement/emeraudedeepslate
execute as @a[scores={LapisDeepslate=1..}] run function new_advancements:advancement/lapisdeepslate
execute as @a[scores={RedstoneDeepslate=1..}] run function new_advancements:advancement/redstonedeepslate

execute as @a if score @s Charbon matches 1.. if score @s Fer matches 1.. if score @s Or matches 1.. if score @s Lapis matches 1.. if score @s Redstone matches 1.. if score @s Cuivre matches 1.. if score @s CuivreDeepslate matches 1.. if score @s Diamant matches 1.. if score @s Emeraude matches 1.. if score @s Quartz matches 1.. unless score @s MineurSimple matches 1.. run function new_advancements:advancement/mineursimple
execute as @a if score @s Charbon matches 64.. if score @s Fer matches 64.. if score @s Or matches 64.. if score @s Lapis matches 64.. if score @s Redstone matches 64.. if score @s Cuivre matches 64.. if score @s Diamant matches 64.. if score @s Emeraude matches 64.. if score @s Quartz matches 64.. unless score @s MineurMoyen matches 1.. run function new_advancements:advancement/mineurmoyen
execute as @a if score @s Charbon matches 128.. if score @s Fer matches 128.. if score @s Or matches 128.. if score @s Lapis matches 128.. if score @s Redstone matches 128.. if score @s Cuivre matches 128.. if score @s Diamant matches 128.. if score @s Emeraude matches 128.. if score @s Quartz matches 128.. unless score @s MineurDifficile matches 1.. run function new_advancements:advancement/mineurdifficile
execute as @a if score @s Charbon matches 1000.. if score @s Fer matches 1000.. if score @s Or matches 1000.. if score @s Lapis matches 1000.. if score @s Redstone matches 1000.. if score @s Cuivre matches 1000.. if score @s Diamant matches 1000.. if score @s Emeraude matches 1000.. if score @s Quartz matches 1000.. unless score @s MineurImpossible matches 1.. run function new_advancements:advancement/mineurimpossible

execute as @a store result score @s Y run data get entity @s Pos[1]
execute as @a[scores={Y=1000..}] unless score @s TresHaut matches 1.. run function new_advancements:advancement/treshaut

execute as @a[gamemode=!creative,gamemode=!spectator] at @s if blocks ~ ~ ~ ~ ~-100 ~ -4047 77 -2958 all unless score @s Fly matches 1.. run function new_advancements:advancement/flyjoue
execute as @a[scores={Fly=1..}] run scoreboard players add @s Fly 1
execute as @a[scores={Fly=200..}] run scoreboard players reset @s Fly
execute as @a[scores={MortFly=1..}] if score @s Fly matches 1.. unless score @s FlyAdvancement matches 1.. run function new_advancements:advancement/fly

execute as @a[scores={Y=..-65}] if score @s MortVoid matches 1.. unless score @s Void matches 1.. run function new_advancements:advancement/void

execute as @a[scores={RedstoneTorch=1..}] if score @s RedstoneBlock matches 1.. if score @s Repeater matches 1.. if score @s Comparator matches 1.. if score @s Piston matches 1.. if score @s StickyPiston matches 1.. if score @s SlimeBlock matches 1.. if score @s HoneyBlock matches 1.. if score @s Observer matches 1.. if score @s Hopper matches 1.. if score @s Dispenser matches 1.. if score @s Lectern matches 1.. if score @s Target matches 1.. if score @s Lever matches 1.. if score @s LightningRod matches 1.. if score @s DaylightDetector matches 1.. if score @s TripwireHook matches 1.. if score @s TrappedChest matches 1.. if score @s TNT matches 1.. if score @s RedstoneLamp matches 1.. if score @s NoteBlock matches 1.. unless score @s MumboJumbo matches 1.. run function new_advancements:advancement/mumbojumbo

execute as @a at @s if entity @e[type=giant,distance=..25] unless score @s TitansJoue matches 1.. run function new_advancements:advancement/titansjoue
execute as @a[scores={TitansJoue=1..}] run scoreboard players add @s TitansJoue 1
execute as @a[scores={TitansJoue=4760..}] run scoreboard players reset @s TitansJoue
execute as @a[scores={TitansJoue=1..}] at @s unless entity @e[type=giant,distance=..30] run function new_advancements:advancement/titansjoueplus

execute as @a[scores={KillTitans=1..}] unless score @s TitansTuer matches 1.. run function new_advancements:advancement/titanstuer

effect give @e[type=giant] slowness 1 2 true
execute at @e[type=giant,tag=!Mange] as @a[scores={TitansJoue=1..},distance=..2.75] at @s run scoreboard players set @s TitansMange 1
execute as @e[type=giant,tag=!Mange] at @s if entity @a[scores={TitansJoue=1..},distance=..2.75] run tag @s add Mange
execute as @a[scores={TitansMange=1}] at @s facing entity @e[tag=Mange,sort=nearest,limit=1] eyes run tp @s ~ ~1 ~ ~ ~
execute as @a[scores={TitansMange=1}] at @s if entity @e[type=zombie,tag=Titan,distance=..3] run scoreboard players set @s TitansMange 2
execute as @a[scores={TitansMange=2}] at @e[type=minecraft:giant] anchored eyes run teleport ^ ^7 ^1.5
execute as @a[scores={TitansMange=2}] run effect give @s wither 999999 10 true
execute as @a[scores={TitansMange=1..}] if score @s MortParTitan matches 1.. run tag @e[type=giant,tag=Mange,sort=nearest,limit=1] remove Mange
execute as @a[scores={TitansMange=1..}] if score @s MortParTitan matches 1.. run scoreboard players reset @s TitansMange
scoreboard players reset @a[scores={MortParTitan=1..}] MortParTitan
execute at @e[type=giant,tag=Mange] as @a[distance=10..,scores={TitansMange=1..}] unless score @s MangeTitan matches 1.. run function new_advancements:advancement/titanmange
execute as @e[type=giant,tag=Mange] at @s unless entity @a[distance=..10,scores={TitansMange=1..}] run tag @s remove Mange
execute as @e[type=zombie,tag=Titan] at @s unless entity @e[type=giant,distance=..10] run kill @s

execute as @e[type=zombie,nbt={HandItems:[{id: "minecraft:enchanted_book"},{}], CustomName: '{"text":"Titan"}'}] at @s run function new_advancements:giant
execute as @e[type=zombie,nbt={HandItems:[{id: "minecraft:enchanted_book"},{}], CustomName: '{"text":"titan"}'}] at @s run function new_advancements:giant

execute as @a if score @s Kill1 matches 1.. if score @s Kill2 matches 1.. if score @s Kill3 matches 1.. if score @s Kill4 matches 1.. if score @s Kill5 matches 1.. if score @s Kill6 matches 1.. if score @s Kill7 matches 1.. if score @s Kill8 matches 1.. if score @s Kill9 matches 1.. if score @s Kill10 matches 1.. if score @s Kill11 matches 1.. if score @s Kill12 matches 1.. if score @s Kill13 matches 1.. if score @s Kill14 matches 1.. if score @s Kill15 matches 1.. if score @s Kill16 matches 1.. if score @s Kill17 matches 1.. if score @s Kill18 matches 1.. if score @s Kill19 matches 1.. if score @s Kill20 matches 1.. if score @s Kill21 matches 1.. if score @s Kill22 matches 1.. if score @s Kill23 matches 1.. if score @s Kill24 matches 1.. if score @s Kill25 matches 1.. if score @s Kill26 matches 1.. if score @s Kill27 matches 1.. if score @s Kill28 matches 1.. if score @s Kill29 matches 1.. if score @s Kill30 matches 1.. if score @s Kill31 matches 1.. if score @s Kill32 matches 1.. if score @s Kill33 matches 1.. if score @s Kill34 matches 1.. if score @s Kill35 matches 1.. if score @s Kill36 matches 1.. if score @s Kill37 matches 1.. if score @s Kill38 matches 1.. if score @s Kill39 matches 1.. if score @s Kill40 matches 1.. if score @s Kill41 matches 1.. if score @s Kill42 matches 1.. if score @s Kill43 matches 1.. if score @s Kill44 matches 1.. if score @s Kill45 matches 1.. if score @s Kill46 matches 1.. if score @s Kill47 matches 1.. if score @s Kill48 matches 1.. if score @s Kill49 matches 1.. if score @s Kill50 matches 1.. if score @s Kill51 matches 1.. if score @s Kill52 matches 1.. if score @s Kill53 matches 1.. if score @s Kill54 matches 1.. if score @s Kill55 matches 1.. if score @s Kill56 matches 1.. if score @s Kill57 matches 1.. if score @s Kill58 matches 1.. if score @s Kill59 matches 1.. if score @s Kill60 matches 1.. if score @s Kill61 matches 1.. if score @s Kill62 matches 1.. if score @s Kill63 matches 1.. if score @s Kill64 matches 1.. if score @s Kill65 matches 1.. if score @s Kill66 matches 1.. if score @s Kill67 matches 1.. if score @s Kill68 matches 1.. if score @s Kill69 matches 1.. if score @s Kill70 matches 1.. if score @s Kill71 matches 1.. if score @s Kill72 matches 1.. if score @s Kill73 matches 1.. if score @s Kill74 matches 1.. if score @s Kill75 matches 1.. if score @s Kill76 matches 1.. if score @s Kill77 matches 1.. if score @s Kill78 matches 1.. unless score @s Extinction matches 1.. run function new_advancements:advancement/extinction

execute as @a[nbt={Inventory:[{id:"minecraft:emerald_block"}]}] store result score @s NbemeraldBlock run clear @s emerald_block 0
execute as @a[nbt={Inventory:[{id:"minecraft:iron_block"}]}] store result score @s NbironBlock run clear @s iron_block 0
execute as @a[nbt={Inventory:[{id:"minecraft:gold_block"}]}] store result score @s NbgoldBlock run clear @s gold_block 0
execute as @a[nbt={Inventory:[{id:"minecraft:redstone_block"}]}] store result score @s NbredstoneBlock run clear @s redstone_block 0
execute as @a[nbt={Inventory:[{id:"minecraft:lapis_block"}]}] store result score @s NblapisBlock run clear @s lapis_block 0
execute as @a[nbt={Inventory:[{id:"minecraft:copper_block"}]}] store result score @s NbcopperBlock run clear @s copper_block 0
execute as @a[nbt={Inventory:[{id:"minecraft:diamond_block"}]}] store result score @s NbdiamondBlock run clear @s diamond_block 0
execute as @a[nbt={Inventory:[{id:"minecraft:quartz_block"}]}] store result score @s NbquartzBlock run clear @s quartz_block 0
execute as @a[nbt={Inventory:[{id:"minecraft:netherite_block"}]}] store result score @s NbnetheriteBlock run clear @s netherite_block 0
execute as @a[nbt={Inventory:[{id:"minecraft:coal_block"}]}] store result score @s NbcoalBlock run clear @s coal_block 0
execute as @a[scores={NbnetheriteBlock=10..}] if score @s NbemeraldBlock matches 10.. if score @s NbcoalBlock matches 10.. if score @s NbironBlock matches 10.. if score @s NbgoldBlock matches 10.. if score @s NbredstoneBlock matches 10.. if score @s NblapisBlock matches 10.. if score @s NbcopperBlock matches 10.. if score @s NbdiamondBlock matches 10.. if score @s NbquartzBlock matches 10.. unless score @s MegaStonks matches 1.. run function new_advancements:advancement/megastonks

execute as @a[scores={CraftChestplate=1..},nbt={Inventory:[{id:"minecraft:leather_chestplate",tag:{display:{color:16701501}}}]}] unless score @s GiletsJaunes matches 1.. run function new_advancements:advancement/gilets_jaunes
scoreboard players reset @a[scores={CraftChestplate=1..}] CraftChestplate

scoreboard players set @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots",tag:{Enchantments:[{id:"minecraft:frost_walker"}]}}]}] FrostWalker 1
scoreboard players set @a[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots",tag:{Enchantments:[{id:"minecraft:frost_walker"}]}}]}] FrostWalker 1
scoreboard players set @a[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots",tag:{Enchantments:[{id:"minecraft:frost_walker"}]}}]}] FrostWalker 1
scoreboard players set @a[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots",tag:{Enchantments:[{id:"minecraft:frost_walker"}]}}]}] FrostWalker 1
scoreboard players set @a[nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots",tag:{Enchantments:[{id:"minecraft:frost_walker"}]}}]}] FrostWalker 1
scoreboard players set @a[nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots",tag:{Enchantments:[{id:"minecraft:frost_walker"}]}}]}] FrostWalker 1
execute as @a[scores={FrostWalker=1..}] at @s if block ~ ~-1 ~ frosted_ice if block ~ ~-2 ~ water unless score @s Jesus matches 1.. run function new_advancements:advancement/jesus
scoreboard players reset @a[scores={FrostWalker=1..}] FrostWalker

execute as @a[scores={GateauManger=70..}] unless score @s Gourmand matches 1.. run function new_advancements:advancement/gourmand

execute as @a[scores={LancePotion=1..}] run scoreboard players add @s LancePotionCD 1
execute as @a[scores={LancePotionCD=200..}] run function new_advancements:advancement/lance_potion_cd
execute as @a unless score @s LancePotion matches 1.. at @s if entity @e[type=potion,nbt={Item:{id:"minecraft:splash_potion",tag:{Potion:"minecraft:healing"}}},distance=..1.5] unless score @s Vaccin matches 1.. run function new_advancements:advancement/vaccin

execute as @a[scores={PatateMange=192..}] unless score @s Patates matches 1.. run advancement grant @s only obscurion:patate
execute as @a[scores={PatateMange=192..}] unless score @s Patates matches 1.. run scoreboard players set @s Patates 1
execute as @a[scores={PatateMange=1..}] unless score @s PatateCD matches 1.. unless score @s Patates matches 1.. run scoreboard players set @s PatateCD 1
execute as @a[scores={PatateCD=1..}] run scoreboard players add @s PatateCD 1
execute as @a[scores={PatateCD=36000..}] run scoreboard players reset @s PatateMange
execute as @a[scores={PatateCD=36000..}] run scoreboard players reset @s PatateCD
execute as @a[scores={PatateMange1=1..}] run scoreboard players operation @s PatateMange += @s PatateMange1
execute as @a[scores={PatateMange2=1..}] run scoreboard players operation @s PatateMange += @s PatateMange2
execute as @a[scores={PatateMange3=1..}] run scoreboard players operation @s PatateMange += @s PatateMange3
scoreboard players remove @a[scores={PatateMange1=1..}] PatateMange1 1
scoreboard players remove @a[scores={PatateMange2=1..}] PatateMange2 1
scoreboard players remove @a[scores={PatateMange3=1..}] PatateMange3 1