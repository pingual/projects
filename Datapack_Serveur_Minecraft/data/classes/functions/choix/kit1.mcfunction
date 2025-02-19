give @s shears
give @s bone_meal 64
give @s wheat_seeds
give @s potato
give @s carrot
give @s beetroot_seeds
give @s pumpkin_seeds
give @s melon_seeds
give @s sweet_berries
tellraw @s ["",{"text":"Tu viens de récupérer le kit "},{"text":"Farmeur","bold":true,"color":"yellow"}]
kill @e[tag=MinecartKits,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{tag:{Tags:["SpeItems"]}}}]
scoreboard players set @s KitFait 1
scoreboard players reset @s KitCherche
