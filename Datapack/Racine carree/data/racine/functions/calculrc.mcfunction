scoreboard players add @s x 1
scoreboard players operation @s TestCalcul = @s SaveX
scoreboard players operation @s TestCalcul += @s x
scoreboard players operation @s TestCalcul *= @s x
execute as @s if score @s TestCalcul > @s Reste run function racine:scores
execute as @s unless score @s Fin matches 1.. run function racine:calculrc