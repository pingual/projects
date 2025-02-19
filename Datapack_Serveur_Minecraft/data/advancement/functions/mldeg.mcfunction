tellraw @s {"text":"Tu viens de gagner 60 francs et 60 points d'xp!"}
scoreboard players add @s Money 60
scoreboard players add @s XP 60
execute as @s run function advancement:xp