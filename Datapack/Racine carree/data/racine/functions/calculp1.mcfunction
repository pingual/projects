scoreboard players reset @s CalculPythagore
scoreboard players operation @s Cote1Calcul = @s Cote1
scoreboard players operation @s Cote2Calcul = @s Cote2

scoreboard players operation @s Cote1Calcul *= @s Cote1Calcul
scoreboard players operation @s Cote2Calcul *= @s Cote2Calcul
scoreboard players operation @s Cote1Calcul += @s Cote2Calcul

scoreboard players operation @s Racine_Carree = @s Cote1Calcul
execute as @s run function racine:racinecarree
title @s subtitle ["",{"text":"L'hypoténuse de "},{"score":{"name":"@s","objective":"Cote1"}},{"text":" et de "},{"score":{"name":"@s","objective":"Cote2"}},{"text":" est de "},{"score":{"name":"@s","objective":"ResultatRacine"}},{"text":"!"}]
title @s title ""