execute if entity @s[team=Ilunis] run tellraw @s ["",{"text":"La banque de votre ville contient actuellement "},{"score":{"name":"Bank","objective":"Pingual"}},{"text":" francs!"}]
execute if entity @s[team=Survivor] run tellraw @s ["",{"text":"La banque de votre ville contient actuellement "},{"score":{"name":"Bank","objective":"Survivor"}},{"text":" francs!"}]
execute if entity @s[team=Nathfirex] run tellraw @s ["",{"text":"La banque de votre ville contient actuellement "},{"score":{"name":"Bank","objective":"Nathfirex"}},{"text":" francs!"}]
execute if entity @s[team=Le_Buildist] run tellraw @s ["",{"text":"La banque de votre ville contient actuellement "},{"score":{"name":"Bank","objective":"Le_Buildist"}},{"text":" francs!"}]
execute if entity @s[team=Chica] run tellraw @s ["",{"text":"La banque de votre ville contient actuellement "},{"score":{"name":"Bank","objective":"Chica"}},{"text":" francs!"}]
execute if entity @s[team=GrandSaule] run tellraw @s ["",{"text":"La banque de votre ville contient actuellement "},{"score":{"name":"Bank","objective":"GrandSaule"}},{"text":" francs!"}]
scoreboard players reset @s fac.bank_info