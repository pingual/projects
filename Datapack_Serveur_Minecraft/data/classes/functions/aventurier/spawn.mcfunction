execute if score @s ChevalCD matches 1.. run scoreboard players set @s ChevalMin 3600
execute if score @s ChevalCD matches 1.. run scoreboard players operation @s ChevalMin -= @s ChevalCD
execute if score @s ChevalCD matches 1.. run scoreboard players operation @s ChevalMin /= 1200 ApprentiCD
execute if score @s ChevalCD matches 1.. run scoreboard players set @s ChevalSec 3600
execute if score @s ChevalCD matches 1.. run scoreboard players operation @s ChevalSec -= @s ChevalCD
execute if score @s ChevalCD matches 1.. run scoreboard players operation @s ChevalSec %= 1200 ApprentiCD
execute if score @s ChevalCD matches 1.. run scoreboard players operation @s ChevalSec /= 20 ApprentiCD
execute if score @s ChevalCD matches 1.. run title @s actionbar ["",{"text":"Il reste "},{"score":{"name":"@s","objective":"ChevalMin"}},{"text":" minutes et "},{"score":{"name":"@s","objective":"ChevalSec"}},{"text":" secondes!"}]
execute unless score @s ChevalCD matches 1.. unless score @s ChevalID matches 1.. run scoreboard players add ID ChevalID 1
execute unless score @s ChevalCD matches 1.. unless score @s ChevalID matches 1.. run scoreboard players operation @s ChevalID = ID ChevalID
execute unless score @s ChevalCD matches 1.. as @e[type=horse,tag=ChevalExplorateur] if score @s ChevalID = @a[scores={classes.spawn_horse=1..},limit=1] ChevalID run kill @s
execute unless score @s ChevalCD matches 1.. run summon minecraft:horse ~ ~ ~ {Tags: ["ChevalExplorateur","Debut"],SaddleItem: {id: "minecraft:saddle", Count: 1b, tag: {Tags: ["SelleExplorateur"]}}}
execute unless score @s ChevalCD matches 1.. run scoreboard players operation @e[type=horse,tag=Debut] ChevalID = @s ChevalID
execute unless score @s ChevalCD matches 1.. run tag @e[type=horse,tag=Debut] remove Debut
execute unless score @s ChevalCD matches 1.. run scoreboard players set @s ChevalCD 1