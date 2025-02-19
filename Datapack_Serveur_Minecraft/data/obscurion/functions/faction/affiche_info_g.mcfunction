tellraw @s {"text":"République Sénatoriale de la Cité","color": "dark_green"}
tellraw @s "-----------------------------------------------------"
tellraw @s ["",{"text":"Membres:\n","color": "dark_green"},{"selector":"@e[type=armor_stand,tag=GrandSaule]"}]
tellraw @s "-----------------------------------------------------"
tellraw @s ["",{"text":"Claims utilisés: ","color": "dark_green"},{"score":{"name":"ClaimUse","objective":"GrandSaule"}}]
tellraw @s ["",{"text":"Claims totaux: ","color": "dark_green"},{"score":{"name":"PowerAll","objective":"GrandSaule"}}]
tellraw @s "-----------------------------------------------------"
tellraw @s {"text":"Statut:","color": "dark_green"}
execute if score GS war matches 1.. run tellraw @s "En guerre contre Survivor"
execute if score GN war matches 1.. run tellraw @s "En guerre contre Nathfirex"
execute if score GL war matches 1.. run tellraw @s "En guerre contre Le_Buildist"
execute if score GC war matches 1.. run tellraw @s "En guerre contre Chica"
execute if score GPaix war matches 1.. run tellraw @s "En paix"
tellraw @s "-----------------------------------------------------"
tellraw @s {"text":"Alliances:","color": "dark_green"}
execute if score GS ally matches 1.. if score SG ally matches 1.. run tellraw @s "En alliance avec Survivor"
execute if score GN ally matches 1.. if score NG ally matches 1.. run tellraw @s "En alliance avec Nathfirex"
execute if score GL ally matches 1.. if score LG ally matches 1.. run tellraw @s "En alliance avec Le_Buildist"
execute if score GC ally matches 1.. if score CG ally matches 1.. run tellraw @s "En alliance avec Chica"
tellraw @s "-----------------------------------------------------"
tag @s remove GrandSauleInfo