give @s iron_helmet
give @s iron_chestplate
give @s iron_leggings
give @s iron_boots
give @s iron_sword
tellraw @s ["",{"text":"Tu viens de récupérer le kit "},{"text":"Survivant","bold":true,"color":"yellow"}]
kill @e[tag=MinecartKits,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{tag:{Tags:["SpeItems"]}}}]
scoreboard players set @s KitFait 1
scoreboard players reset @s KitCherche
