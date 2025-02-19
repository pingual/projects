tellraw @s {"text":"Tu viens de gagner 250 francs et 250 points d'xp!"}
scoreboard players add @s Money 250
scoreboard players add @s XP 250
execute as @s run function advancement:xp