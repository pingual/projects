tellraw @s {"text":"Tu viens de gagner 500 francs et 500 points d'xp!"}
scoreboard players add @s Money 500
scoreboard players add @s XP 500
execute as @s run function advancement:xp