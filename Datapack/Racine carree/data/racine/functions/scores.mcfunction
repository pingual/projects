scoreboard players remove @s x 1
scoreboard players operation @s TestCalcul = @s SaveX
scoreboard players operation @s TestCalcul += @s x
scoreboard players operation @s TestCalcul *= @s x
scoreboard players operation @s ResultatRacine *= @s 10
scoreboard players operation @s ResultatRacine += @s x
scoreboard players operation @s Nombre = @s SaveRacine
execute as @s run function racine:paquet1
scoreboard players operation @s NombreCalcul = @s Nombre
scoreboard players operation @s Nombre = @s SaveRacine
execute as @s run function racine:paquet2
scoreboard players set @s 100000000 100000000
scoreboard players operation @s SaveRacine = @s Nombre
scoreboard players operation @s Reste -= @s TestCalcul
scoreboard players operation @s Reste *= @s 100
scoreboard players operation @s Reste += @s NombreCalcul
scoreboard players operation @s SaveX = @s ResultatRacine
scoreboard players operation @s SaveX += @s SaveX
scoreboard players operation @s SaveX *= @s 10
scoreboard players reset @s x
execute if score @s Erreur00 matches 0 run scoreboard players set @s Erreur00 -1
execute if score @s SaveRacine matches 1..9 run scoreboard players operation @s SaveRacine += @s 10
execute if score @s SaveRacine < @s Erreur00 run scoreboard players add @s SaveRacine 10
scoreboard players operation @s Erreur00 /= @s 10
execute if score @s SaveRacine matches 0 run scoreboard players set @s Fin 1
execute if score @s NombreCalcul matches 0 if score @s SaveRacine matches 1.. if score @s Fin matches 1 run scoreboard players set @s SaveRacine 10
execute if score @s NombreCalcul matches 0 if score @s SaveRacine matches 1.. if score @s Fin matches 1 run scoreboard players reset @s Fin