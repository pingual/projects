scoreboard players operation @s XP -= @s NbXP
scoreboard players add @s Niveau 1
tellraw @s ["",{"text":"Tu viens de passer au niveau "},{"score":{"name":"@s","objective":"Niveau"}},{"text":"!"}]
execute as @s at @s run function advancement:recompenses 
execute as @s run function advancement:xp