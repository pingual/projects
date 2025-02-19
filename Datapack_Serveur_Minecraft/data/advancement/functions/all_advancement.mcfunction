scoreboard players set @s all_advancement 1
tellraw @a ["",{"text":"Féliciation, "},{"selector":"@s"},{"text":" viens de finir tous les advancements!!\nBravo à lui!!!!!!"}]
scoreboard players add @s XP 1000
scoreboard players add @s Money 10000
execute as @s run function advancement:xp