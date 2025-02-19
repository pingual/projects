give @s experience_bottle 32
give @s lapis_lazuli 64
give @s book
tellraw @s ["",{"text":"Tu viens de récupérer le kit "},{"text":"Enchanteur","bold":true,"color":"yellow"}]
kill @e[tag=MinecartKits,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{tag:{Tags:["SpeItems"]}}}]
scoreboard players set @s KitFait 1
scoreboard players reset @s KitCherche