scoreboard players reset @s classes.spe
scoreboard players set @s Explorateur 1
tellraw @s ["",{"text":"Tu fais maintenant partie des "},{"text":"Explorateurs","bold":true,"color":"dark_blue"},{"text":"!\nPour récupérer tes items, exécute la commande "},{"text":"/trigger classes.item","clickEvent":{"action":"run_command","value":"/trigger classes.item"},"hoverEvent":{"action":"show_text","contents":"/trigger classes.item"}}]
data merge entity @s {Items:[]}
kill @e[tag=MinecartAventurier,sort=nearest,limit=1]
execute as @s run function classes:items
tag @s remove AventurierCherche