execute if score @s ApprentiCD matches 1.. run scoreboard players set @s ApprentiSec 600
execute if score @s ApprentiCD matches 1.. run scoreboard players operation @s ApprentiSec -= @s ApprentiCD
execute if score @s ApprentiCD matches 1.. run scoreboard players operation @s ApprentiSec /= 20 ApprentiCD
execute if score @s ApprentiCD matches 1.. run title @s actionbar ["",{"text":"Il reste "},{"score":{"name":"@s","objective":"ApprentiSec"}},{"text":" secondes!"}]
execute unless score @s ApprentiCD matches 1.. if entity @s[team=Pingual] as @r[team=!Pingual,distance=..25] run tag @s add ApprentiLevitation
execute unless score @s ApprentiCD matches 1.. if entity @s[team=Survivor] as @r[team=!Survivor,distance=..25] run tag @s add ApprentiLevitation
execute unless score @s ApprentiCD matches 1.. if entity @s[team=Nathfirex] as @r[team=!Nathfirex,distance=..25] run tag @s add ApprentiLevitation
execute unless score @s ApprentiCD matches 1.. if entity @s[team=GrandSaule] as @r[team=!GrandSaule,distance=..25] run tag @s add ApprentiLevitation
execute unless score @s ApprentiCD matches 1.. if entity @s[team=Chica] as @r[team=!Chica,distance=..25] run tag @s add ApprentiLevitation
execute unless score @s ApprentiCD matches 1.. if entity @s[team=Le_Buildist] as @r[team=!Le_Buildist,distance=..25] run tag @s add ApprentiLevitation
execute as @a[tag=ApprentiLevitation] run effect give @s levitation 4 0 true
execute if entity @a[tag=ApprentiLevitation] run scoreboard players set @s ApprentiCD 1
execute as @a[tag=ApprentiLevitation] run tag @s remove ApprentiLevitation