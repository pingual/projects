scoreboard players operation @s NbXP = @s Niveau
scoreboard players add @s NbXP 1
scoreboard players operation @s NbXP *= 10 NbXP
execute as @s if score @s XP >= @s NbXP unless score @s Niveau matches 100.. run function advancement:add_niveau
scoreboard players reset @s NbXD