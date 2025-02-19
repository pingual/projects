clear @s
scoreboard players operation @s id = id id
scoreboard players add id id 1
tellraw @a ["",{"text":"Bienvenue sur Obscurion v2 "},{"selector":"@s"},{"text":"!"}]
team join Vagabond @s
tag @s add connecte
scoreboard players set @s MyolnireCD 6001
scoreboard players set @s Niveau 0
tellraw @s "N'hésitez pas à éxecuter la commande /trigger kits pour récupérer un kit pour bien commencer (disponible une seule fois)"