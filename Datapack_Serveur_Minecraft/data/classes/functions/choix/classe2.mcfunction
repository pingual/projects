tag @s add Guerrier
tag @s add Guerrier
tellraw @s ["",{"text":"Tu fais maintenant partie des "},{"text":"Guerriers","bold":true,"color":"dark_blue"},{"text":"!\nPour récupérer tes items, exécute la commande "},{"text":"/trigger classes.item","clickEvent":{"action":"run_command","value":"/trigger classes.item"},"hoverEvent":{"action":"show_text","contents":"/trigger classes.item"}}]
data merge entity @s {Items:[]}
kill @e[tag=Minecart,sort=nearest,limit=1]
tag @s remove ClasseCherche
