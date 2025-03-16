execute as @s run function racine:loadscores
scoreboard players operation @s SaveRacine = @s Racine_Carree
execute as @s run function racine:meperreur00
scoreboard players operation @s Nombre = @s SaveRacine
execute as @s run function racine:paquet1
scoreboard players operation @s NombreCalcul = @s Nombre
scoreboard players operation @s Nombre = @s SaveRacine
execute as @s run function racine:paquet2
scoreboard players set @s 100000000 100000000
scoreboard players operation @s SaveRacine = @s Nombre
scoreboard players operation @s Reste = @s NombreCalcul
execute as @s run function racine:calculrc
scoreboard players operation @s Racine_Carree /= @s 100 
title @s title ["",{"text":"La racine carrée de "},{"score":{"name":"@s","objective":"Racine_Carree"}},{"text":" est de "},{"score":{"name":"@s","objective":"ResultatRacine"}},{"text":"!"}]
scoreboard players reset @s Racine_Carree