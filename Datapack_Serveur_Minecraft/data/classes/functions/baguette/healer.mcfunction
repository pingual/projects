execute if score @s HealerCD matches 1.. run scoreboard players set @s HealerSec 900
execute if score @s HealerCD matches 1.. run scoreboard players operation @s HealerSec -= @s HealerCD
execute if score @s HealerCD matches 1.. run scoreboard players operation @s HealerSec /= 20 ApprentiCD
execute if score @s HealerCD matches 1.. run title @s actionbar ["",{"text":"Il reste "},{"score":{"name":"@s","objective":"HealerSec"}},{"text":" secondes!"}]
execute unless score @s HealerCD matches 1.. run tellraw @s {"text":"Quel joueur veux-tu healer? Clique sur ce message et écris son id (visible dans le tab)!","clickEvent":{"action":"suggest_command","value":"/trigger classes.heal set "},"hoverEvent":{"action":"show_text","contents":"CLIQUE ICI!"}}
execute unless score @s HealerCD matches 1.. run scoreboard players enable @s classes.heal