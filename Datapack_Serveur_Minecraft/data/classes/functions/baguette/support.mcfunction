execute if score @s SupportCD matches 1.. run scoreboard players set @s SupportMin 3600
execute if score @s SupportCD matches 1.. run scoreboard players operation @s SupportMin -= @s SupportCD
execute if score @s SupportCD matches 1.. run scoreboard players operation @s SupportMin /= 1200 ApprentiCD
execute if score @s SupportCD matches 1.. run scoreboard players set @s SupportSec 3600
execute if score @s SupportCD matches 1.. run scoreboard players operation @s SupportSec -= @s SupportCD
execute if score @s SupportCD matches 1.. run scoreboard players operation @s SupportSec %= 1200 ApprentiCD
execute if score @s SupportCD matches 1.. run scoreboard players operation @s SupportSec /= 20 ApprentiCD
execute if score @s SupportCD matches 1.. run title @s actionbar ["",{"text":"Il reste "},{"score":{"name":"@s","objective":"SupportMin"}},{"text":" minutes et "},{"score":{"name":"@s","objective":"SupportSec"}},{"text":" secondes!"}]
execute unless score @s SupportCD matches 1.. run tellraw @s {"text":"Quel joueur veux-tu supporter? Clique sur ce message et écris son id (visible dans le tab)!","clickEvent":{"action":"suggest_command","value":"/trigger classes.support set "},"hoverEvent":{"action":"show_text","contents":"CLIQUE ICI!"}}
execute unless score @s SupportCD matches 1.. run scoreboard players enable @s classes.support