tellraw @s {"text":"République Communiste Impériale du Furet (R.C.I.F)","color": "red"}
tellraw @s "-----------------------------------------------------"
tellraw @s ["",{"text":"Membres:\n","color": "red"},{"selector":"@e[type=armor_stand,tag=Survivor]"}]
tellraw @s "-----------------------------------------------------"
tellraw @s ["",{"text":"Claims utilisés: ","color": "red"},{"score":{"name":"ClaimUse","objective":"Survivor"}}]
tellraw @s ["",{"text":"Claims totaux: ","color": "red"},{"score":{"name":"PowerAll","objective":"Survivor"}}]
tellraw @s "-----------------------------------------------------"
tellraw @s {"text":"Statut:","color": "red"}
execute if score SN war matches 1.. run tellraw @s "En guerre contre Nathfirex"
execute if score SL war matches 1.. run tellraw @s "En guerre contre Le_Buildist"
execute if score SC war matches 1.. run tellraw @s "En guerre contre Chica"
execute if score SG war matches 1.. run tellraw @s "En guerre contre GrandSaule"
execute if score SPaix war matches 1.. run tellraw @s "En paix"
tellraw @s "-----------------------------------------------------"
tellraw @s {"text":"Alliances:","color": "red"}
execute if score SN ally matches 1.. if score NS ally matches 1.. run tellraw @s "En alliance avec Nathfirex"
execute if score SL ally matches 1.. if score LS ally matches 1.. run tellraw @s "En alliance avec Le_Buildist"
execute if score SC ally matches 1.. if score CS ally matches 1.. run tellraw @s "En alliance avec Chica"
execute if score SG ally matches 1.. if score GS ally matches 1.. run tellraw @s "En alliance avec GrandSaule"
tellraw @s "-----------------------------------------------------"
tag @s remove SurvivorInfo