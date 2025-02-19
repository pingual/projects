tellraw @s {"text":"Tu viens de gagner 100 francs et 100 points d'xp!"}
scoreboard players add @s Money 100
scoreboard players add @s XP 100
execute as @s run function advancement:xp