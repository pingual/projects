tellraw @s {"text":"Domination Impériale De l’Axolotl (D.I.D.A)","color": "light_purple"}
tellraw @s "-----------------------------------------------------"
tellraw @s ["",{"text":"Membres:\n","color": "light_purple"},{"selector":"@e[type=armor_stand,tag=Chica]"}]
tellraw @s "-----------------------------------------------------"
tellraw @s ["",{"text":"Claims utilisés: ","color": "light_purple"},{"score":{"name":"ClaimUse","objective":"Chica"}}]
tellraw @s ["",{"text":"Claims totaux: ","color": "light_purple"},{"score":{"name":"PowerAll","objective":"Chica"}}]
tellraw @s "-----------------------------------------------------"
tellraw @s {"text":"Statut:","color": "light_purple"}
execute if score CS war matches 1.. run tellraw @s "En guerre contre Survivor"
execute if score CN war matches 1.. run tellraw @s "En guerre contre Nathfirex"
execute if score CL war matches 1.. run tellraw @s "En guerre contre Le_Buildist"
execute if score CG war matches 1.. run tellraw @s "En guerre contre GrandSaule"
execute if score CPaix war matches 1.. run tellraw @s "En paix"
tellraw @s "-----------------------------------------------------"
tellraw @s {"text":"Alliances:","color": "light_purple"}
execute if score CS ally matches 1.. if score SC ally matches 1.. run tellraw @s "En alliance avec Survivor"
execute if score CN ally matches 1.. if score NC ally matches 1.. run tellraw @s "En alliance avec Nathfirex"
execute if score CL ally matches 1.. if score LC ally matches 1.. run tellraw @s "En alliance avec Le_Buildist"
execute if score CG ally matches 1.. if score GC ally matches 1.. run tellraw @s "En alliance avec GrandSaule"
tellraw @s "-----------------------------------------------------"
tag @s remove ChicaInfo