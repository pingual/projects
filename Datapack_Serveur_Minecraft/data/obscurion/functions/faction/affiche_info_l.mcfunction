tellraw @s {"text":"Guilde des Aventuriers","color": "dark_red"}
tellraw @s "-----------------------------------------------------"
tellraw @s ["",{"text":"Membres:\n","color": "dark_red"},{"selector":"@e[type=armor_stand,tag=Le_Buildist]"}]
tellraw @s "-----------------------------------------------------"
tellraw @s ["",{"text":"Claims utilisés: ","color": "dark_red"},{"score":{"name":"ClaimUse","objective":"Le_Buildist"}}]
tellraw @s ["",{"text":"Claims totaux: ","color": "dark_red"},{"score":{"name":"PowerAll","objective":"Le_Buildist"}}]
tellraw @s "-----------------------------------------------------"
tellraw @s {"text":"Statut:","color": "dark_red"}
execute if score LS war matches 1.. run tellraw @s "En guerre contre Survivor"
execute if score LN war matches 1.. run tellraw @s "En guerre contre Nathfirex"
execute if score LC war matches 1.. run tellraw @s "En guerre contre Chica"
execute if score LG war matches 1.. run tellraw @s "En guerre contre GrandSaule"
execute if score LPaix war matches 1.. run tellraw @s "En paix"
tellraw @s "-----------------------------------------------------"
tellraw @s {"text":"Alliances:","color": "dark_red"}
execute if score LS ally matches 1.. if score SL ally matches 1.. run tellraw @s "En alliance avec Survivor"
execute if score LN ally matches 1.. if score NL ally matches 1.. run tellraw @s "En alliance avec Nathfirex"
execute if score LC ally matches 1.. if score CL ally matches 1.. run tellraw @s "En alliance avec Chica"
execute if score LG ally matches 1.. if score GL ally matches 1.. run tellraw @s "En alliance avec GrandSaule"
tellraw @s "-----------------------------------------------------"
tag @s remove Le_BuildistInfo