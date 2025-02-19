scoreboard players operation @s NbXP = @s Niveau
scoreboard players add @s NbXP 1
scoreboard players operation @s NbXP *= 10 NbXP
scoreboard players operation @s NbXP -= @s XP
execute unless score @s Niveau matches 100.. run tellraw @s ["",{"text":"Tu es actuellement niveau "},{"score":{"name":"@s","objective":"Niveau"}},{"text":" avec "},{"score":{"name":"@s","objective":"XP"}},{"text":" XP!\nIl te manque "},{"score":{"name":"@s","objective":"NbXP"}},{"text":" XP pour le niveau suivant!"}]
execute if score @s Niveau matches 100.. run tellraw @s ["",{"text":"Tu as atteint le niveau maximum possible (Niveau 100)! BRAVO!"}]