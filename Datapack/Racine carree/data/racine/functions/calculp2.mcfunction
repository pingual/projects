scoreboard players reset @s CalculPythagore
scoreboard players operation @s Cote1Calcul = @s Cote1
scoreboard players operation @s HypotenuseCalcul = @s Hypotenuse

scoreboard players operation @s Cote1Calcul *= @s Cote1Calcul
scoreboard players operation @s HypotenuseCalcul *= @s HypotenuseCalcul
scoreboard players operation @s HypotenuseCalcul -= @s Cote1Calcul

scoreboard players operation @s Racine_Carree = @s HypotenuseCalcul
execute as @s run function racine:racinecarree
title @s subtitle ["",{"text":"Le 2e coté est "},{"score":{"name":"@s","objective":"ResultatRacine"}},{"text":" si les autres cotés sont de "},{"score":{"name":"@s","objective":"Cote1"}},{"text":" et de "},{"score":{"name":"@s","objective":"Hypotenuse"}},{"text":"!"}]
title @s title ""