say OK
setblock 0 55 0 minecraft:oak_sign
scoreboard objectives add spawn trigger
scoreboard objectives add discord trigger
scoreboard objectives add dynmap trigger
scoreboard objectives add fac.join trigger
scoreboard objectives add fac.leave trigger
scoreboard objectives add fac.eject trigger
scoreboard objectives add fac.claim trigger
scoreboard objectives add fac.unclaim trigger
scoreboard objectives add fac.promote trigger
scoreboard objectives add fac.reduce trigger
scoreboard objectives add fac.info trigger
scoreboard objectives add fac.ally trigger
scoreboard objectives add fac.ally_break trigger
scoreboard objectives add fac.bank_deposit trigger
scoreboard objectives add fac.bank_retire trigger
scoreboard objectives add fac.bank_info trigger
scoreboard objectives add fac.bank_log trigger
scoreboard objectives add fac.help trigger
scoreboard objectives add id dummy "(id)"
scoreboard objectives add id_as dummy
execute unless score id id matches 1.. run scoreboard players set id id 1
scoreboard objectives setdisplay list id
scoreboard objectives add x dummy
scoreboard objectives add z dummy
scoreboard players set 16 x 16
scoreboard players set 16 z 16
scoreboard players set 128 x 128
scoreboard players set 128 z 128
scoreboard objectives add Pingual dummy
scoreboard objectives add Survivor dummy
scoreboard objectives add Nathfirex dummy
scoreboard objectives add Le_Buildist dummy
scoreboard objectives add Chica dummy
scoreboard objectives add GrandSaule dummy
execute unless score Commandant Pingual matches 1.. run scoreboard players set Commandant Pingual 0
execute unless score Capitaine Pingual matches 1.. run scoreboard players set Capitaine Pingual 0
execute unless score Membre Pingual matches 1.. run scoreboard players set Membre Pingual 0
execute unless score Commandant Survivor matches 1.. run scoreboard players set Commandant Survivor 0
execute unless score Capitaine Survivor matches 1.. run scoreboard players set Capitaine Survivor 0
execute unless score Membre Survivor matches 1.. run scoreboard players set Membre Survivor 0
execute unless score Commandant Nathfirex matches 1.. run scoreboard players set Commandant Nathfirex 0
execute unless score Capitaine Nathfirex matches 1.. run scoreboard players set Capitaine Nathfirex 0
execute unless score Membre Nathfirex matches 1.. run scoreboard players set Membre Nathfirex 0
execute unless score Commandant Le_Buildist matches 1.. run scoreboard players set Commandant Le_Buildist 0
execute unless score Capitaine Le_Buildist matches 1.. run scoreboard players set Capitaine Le_Buildist 0
execute unless score Membre Le_Buildist matches 1.. run scoreboard players set Membre Le_Buildist 0
execute unless score Commandant Chica matches 1.. run scoreboard players set Commandant Chica 0
execute unless score Capitaine Chica matches 1.. run scoreboard players set Capitaine Chica 0
execute unless score Membre Chica matches 1.. run scoreboard players set Membre Chica 0
execute unless score Commandant GrandSaule matches 1.. run scoreboard players set Commandant GrandSaule 0
execute unless score Capitaine GrandSaule matches 1.. run scoreboard players set Capitaine GrandSaule 0
execute unless score Membre GrandSaule matches 1.. run scoreboard players set Membre GrandSaule 0
scoreboard objectives add fill dummy
scoreboard objectives add ally dummy
scoreboard objectives add war dummy
scoreboard objectives add Power dummy
execute unless score ClaimUse Pingual matches 1.. run scoreboard players set ClaimUse Pingual 0
execute unless score ClaimUse Survivor matches 1.. run scoreboard players set ClaimUse Survivor 0
execute unless score ClaimUse Nathfirex matches 1.. run scoreboard players set ClaimUse Nathfirex 0
execute unless score ClaimUse Le_Buildist matches 1.. run scoreboard players set ClaimUse Le_Buildist 0
execute unless score ClaimUse Chica matches 1.. run scoreboard players set ClaimUse Chica 0
execute unless score ClaimUse GrandSaule matches 1.. run scoreboard players set ClaimUse GrandSaule 0
execute unless score PowerAll Pingual matches 1.. run scoreboard players set PowerAll Pingual 0
execute unless score PowerAll Survivor matches 1.. run scoreboard players set PowerAll Survivor 0
execute unless score PowerAll Nathfirex matches 1.. run scoreboard players set PowerAll Nathfirex 0
execute unless score PowerAll Le_Buildist matches 1.. run scoreboard players set PowerAll Le_Buildist 0
execute unless score PowerAll Chica matches 1.. run scoreboard players set PowerAll Chica 0
execute unless score PowerAll GrandSaule matches 1.. run scoreboard players set PowerAll GrandSaule 0
execute unless score PPaix war matches 0.. run scoreboard players set PPaix war 1
execute unless score SPaix war matches 0.. run scoreboard players set SPaix war 1
execute unless score NPaix war matches 0.. run scoreboard players set NPaix war 1
execute unless score LPaix war matches 0.. run scoreboard players set LPaix war 1
execute unless score CPaix war matches 0.. run scoreboard players set CPaix war 1
execute unless score GPaix war matches 0.. run scoreboard players set GPaix war 1
scoreboard objectives add Money dummy
scoreboard objectives add JourNuit dummy
scoreboard players set 1000 JourNuit 1000
scoreboard players set 24 JourNuit 24
scoreboard players set 17 JourNuit 17
scoreboard players set 6 JourNuit 6
scoreboard players set 3 JourNuit 3
scoreboard objectives add BankID dummy
scoreboard objectives add Salle dummy
scoreboard objectives add TempsDeJeu dummy "Heures de Jeu"
scoreboard players set 72000 TempsJeu 72000
scoreboard objectives add TempsJeu minecraft.custom:minecraft.play_time
scoreboard objectives setdisplay belowName id
scoreboard objectives add identifiant trigger

function particle:load
function wandering_trader:load
function economy:load
function fly:load
function item:load
function obscurion:war/load
function alcool:load
function classes:load
function advancement:load
function new_advancements:load
function advancement:make

team add Pingual
team add Survivor
team add Nathfirex
team add Le_Buildist
team add Chica
team add GrandSaule
team add Vagabond