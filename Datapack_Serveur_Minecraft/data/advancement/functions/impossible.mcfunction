tellraw @s {"text":"Tu viens de gagner 1000 francs et 1000 points d'xp!"}
scoreboard players add @s Money 1000
scoreboard players add @s XP 1000
execute as @s run function advancement:xp