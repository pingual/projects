scoreboard players reset @s classes.spe
scoreboard players set @s Assassin 1
tellraw @s ["",{"text":"Tu fais maintenant partie des "},{"text":"Assassins","bold":true,"color":"dark_blue"},{"text":"!\nPour récupérer tes items, exécute la commande "},{"text":"/trigger classes.item","clickEvent":{"action":"run_command","value":"/trigger classes.item"},"hoverEvent":{"action":"show_text","contents":"/trigger classes.item"}}]
data merge entity @s {Items:[]}
kill @e[tag=MinecartGuerrier,sort=nearest,limit=1]
execute as @s run function classes:items
tag @s remove GuerrierCherche