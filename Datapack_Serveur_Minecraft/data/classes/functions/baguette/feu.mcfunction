execute if score @s FeuCD matches 1.. run scoreboard players set @s FeuMin 3600
execute if score @s FeuCD matches 1.. run scoreboard players operation @s FeuMin -= @s FeuCD
execute if score @s FeuCD matches 1.. run scoreboard players operation @s FeuMin /= 1200 ApprentiCD
execute if score @s FeuCD matches 1.. run scoreboard players set @s FeuSec 3600
execute if score @s FeuCD matches 1.. run scoreboard players operation @s FeuSec -= @s FeuCD
execute if score @s FeuCD matches 1.. run scoreboard players operation @s FeuSec %= 1200 ApprentiCD
execute if score @s FeuCD matches 1.. run scoreboard players operation @s FeuSec /= 20 ApprentiCD
execute if score @s FeuCD matches 1.. run title @s actionbar ["",{"text":"Il reste "},{"score":{"name":"@s","objective":"FeuMin"}},{"text":" minutes et "},{"score":{"name":"@s","objective":"FeuSec"}},{"text":" secondes!"}]
execute unless score @s FeuCD matches 1.. if entity @s[team=Pingual] at @r[team=!Pingual,distance=..25] run setblock ~ ~ ~ fire keep
execute unless score @s FeuCD matches 1.. if entity @s[team=Survivor] at @r[team=!Survivor,distance=..25] run setblock ~ ~ ~ fire keep
execute unless score @s FeuCD matches 1.. if entity @s[team=Nathfirex] at @r[team=!Nathfirex,distance=..25] run setblock ~ ~ ~ fire keep
execute unless score @s FeuCD matches 1.. if entity @s[team=GrandSaule] at @r[team=!GrandSaule,distance=..25] run setblock ~ ~ ~ fire keep
execute unless score @s FeuCD matches 1.. if entity @s[team=Chica] at @r[team=!Chica,distance=..25] run setblock ~ ~ ~ fire keep
execute unless score @s FeuCD matches 1.. if entity @s[team=Le_Buildist] at @r[team=!Le_Buildist,distance=..25] run setblock ~ ~ ~ fire keep
execute unless score @s FeuCD matches 1.. run scoreboard players set @s FeuCD 1