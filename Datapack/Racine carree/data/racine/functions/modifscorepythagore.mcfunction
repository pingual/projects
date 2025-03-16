execute if score @s Cote1t matches 1.. run scoreboard players operation @s Cote1 = @s Cote1t
execute if score @s Cote2t matches 1.. run scoreboard players operation @s Cote2 = @s Cote2t
execute if score @s Hypotenuset matches 1.. run scoreboard players operation @s Hypotenuse = @s Hypotenuset
execute if score @s Hypotenuset matches 1.. run function racine:tellrawpythagore
execute if score @s Cote2t matches 1.. run function racine:tellrawpythagore
execute if score @s Cote1t matches 1.. run function racine:tellrawpythagore
scoreboard players reset @s Cote1t
scoreboard players reset @s Cote2t
scoreboard players reset @s Hypotenuset
scoreboard players enable @s Cote1t
scoreboard players enable @s Cote2t
scoreboard players enable @s Hypotenuset