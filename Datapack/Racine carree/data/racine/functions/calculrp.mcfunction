scoreboard players reset @s CalculPythagore
scoreboard players operation @s Cote1Calcul = @s Cote1
scoreboard players operation @s Cote2Calcul = @s Cote2
scoreboard players operation @s HypotenuseCalcul = @s Hypotenuse

scoreboard players operation @s Cote1Calcul *= @s Cote1Calcul
scoreboard players operation @s Cote2Calcul *= @s Cote2Calcul
scoreboard players operation @s HypotenuseCalcul *= @s HypotenuseCalcul
scoreboard players operation @s Cote1Calcul += @s Cote2Calcul

execute if score @s Cote1Calcul = @s HypotenuseCalcul run title @s subtitle ["",{"text":"Le triangle ayant pour côtés "},{"score":{"name":"@s","objective":"Cote1"}},{"text":", "},{"score":{"name":"@s","objective":"Cote2"}},{"text":" et "},{"score":{"name":"@s","objective":"Hypotenuse"}},{"text":" est rectangle!"}]
execute unless score @s Cote1Calcul = @s HypotenuseCalcul run title @s subtitle ["",{"text":"Le triangle ayant pour côtés "},{"score":{"name":"@s","objective":"Cote1"}},{"text":", "},{"score":{"name":"@s","objective":"Cote2"}},{"text":" et "},{"score":{"name":"@s","objective":"Hypotenuse"}},{"text":" n'est pas rectangle!"}]
title @s title ""