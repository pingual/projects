tellraw @s {"text":"Arcade","color": "gold"}
tellraw @s "-----------------------------------------------------"
tellraw @s ["",{"text":"Membres:\n","color": "gold"},{"selector":"@e[type=armor_stand,tag=Nathfirex]"}]
tellraw @s "-----------------------------------------------------"
tellraw @s ["",{"text":"Claims utilisés: ","color": "gold"},{"score":{"name":"ClaimUse","objective":"Nathfirex"}}]
tellraw @s ["",{"text":"Claims totaux: ","color": "gold"},{"score":{"name":"PowerAll","objective":"Nathfirex"}}]
tellraw @s "-----------------------------------------------------"
tellraw @s {"text":"Statut:","color": "gold"}
execute if score NS war matches 1.. run tellraw @s "En guerre contre Survivor"
execute if score NL war matches 1.. run tellraw @s "En guerre contre Le_Buildist"
execute if score NC war matches 1.. run tellraw @s "En guerre contre Chica"
execute if score NG war matches 1.. run tellraw @s "En guerre contre GrandSaule"
execute if score NPaix war matches 1.. run tellraw @s "En paix"
tellraw @s "-----------------------------------------------------"
tellraw @s {"text":"Alliances:","color": "gold"}
execute if score NS ally matches 1.. if score SN ally matches 1.. run tellraw @s "En alliance avec Survivor"
execute if score NL ally matches 1.. if score LN ally matches 1.. run tellraw @s "En alliance avec Le_Buildist"
execute if score NC ally matches 1.. if score CN ally matches 1.. run tellraw @s "En alliance avec Chica"
execute if score NG ally matches 1.. if score GN ally matches 1.. run tellraw @s "En alliance avec GrandSaule"
tellraw @s "-----------------------------------------------------"
tag @s remove NathfirexInfo