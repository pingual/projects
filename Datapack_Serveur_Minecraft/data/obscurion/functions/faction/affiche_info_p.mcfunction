tellraw @s {"text":"Ilunis","color": "blue"}
tellraw @s "-----------------------------------------------------"
tellraw @s ["",{"text":"Membres:\n","color": "blue"},{"selector":"@e[type=armor_stand,tag=Pingual]"}]
tellraw @s "-----------------------------------------------------"
tellraw @s ["",{"text":"Claims utilisés: ","color": "blue"},{"score":{"name":"ClaimUse","objective":"Pingual"}}]
tellraw @s ["",{"text":"Claims totaux: ","color": "blue"},{"score":{"name":"PowerAll","objective":"Pingual"}}]
tellraw @s "-----------------------------------------------------"
tellraw @s {"text":"Statut:","color": "blue"}
execute if score PS war matches 1.. run tellraw @s "En guerre contre Survivor"
execute if score PN war matches 1.. run tellraw @s "En guerre contre Nathfirex"
execute if score PL war matches 1.. run tellraw @s "En guerre contre Le_Buildist"
execute if score PC war matches 1.. run tellraw @s "En guerre contre Chica"
execute if score PG war matches 1.. run tellraw @s "En guerre contre GrandSaule"
execute if score PPaix war matches 1.. run tellraw @s "En paix"
tellraw @s "-----------------------------------------------------"
tellraw @s {"text":"Alliances:","color": "blue"}
execute if score PS ally matches 1.. if score SP ally matches 1.. run tellraw @s "En alliance avec Survivor"
execute if score PN ally matches 1.. if score NP ally matches 1.. run tellraw @s "En alliance avec Nathfirex"
execute if score PL ally matches 1.. if score LP ally matches 1.. run tellraw @s "En alliance avec Le_Buildist"
execute if score PC ally matches 1.. if score CP ally matches 1.. run tellraw @s "En alliance avec Chica"
execute if score PG ally matches 1.. if score GP ally matches 1.. run tellraw @s "En alliance avec GrandSaule"
tellraw @s "-----------------------------------------------------"
tag @s remove PingualInfo