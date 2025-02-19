tellraw @s {"text":"Tu viens de gagner 10 francs et 10 points d'xp!"}
scoreboard players add @s Money 10
scoreboard players add @s XP 10
execute as @s run function advancement:xp