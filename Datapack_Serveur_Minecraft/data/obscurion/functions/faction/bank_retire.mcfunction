scoreboard players operation Money1 Money = @s Money
execute if entity @s[team=Ilunis] if score Bank Pingual >= @s fac.bank_retire run scoreboard players operation @s Money += @s fac.bank_retire
execute if entity @s[team=Ilunis] if score Bank Pingual >= @s fac.bank_retire run scoreboard players operation Bank Pingual -= @s fac.bank_retire
execute if entity @s[team=Survivor] if score Bank Survivor >= @s fac.bank_retire run scoreboard players operation @s Money += @s fac.bank_retire
execute if entity @s[team=Survivor] if score Bank Survivor >= @s fac.bank_retire run scoreboard players operation Bank Survivor -= @s fac.bank_retire
execute if entity @s[team=Nathfirex] if score Bank Nathfirex >= @s fac.bank_retire run scoreboard players operation @s Money += @s fac.bank_retire
execute if entity @s[team=Nathfirex] if score Bank Nathfirex >= @s fac.bank_retire run scoreboard players operation Bank Nathfirex -= @s fac.bank_retire
execute if entity @s[team=Le_Buildist] if score Bank Le_Buildist >= @s fac.bank_retire run scoreboard players operation @s Money += @s fac.bank_retire
execute if entity @s[team=Le_Buildist] if score Bank Le_Buildist >= @s fac.bank_retire run scoreboard players operation Bank Le_Buildist -= @s fac.bank_retire
execute if entity @s[team=Chica] if score Bank Chica >= @s fac.bank_retire run scoreboard players operation @s Money += @s fac.bank_retire
execute if entity @s[team=Chica] if score Bank Chica >= @s fac.bank_retire run scoreboard players operation Bank Chica -= @s fac.bank_retire
execute if entity @s[team=GrandSaule] if score Bank GrandSaule >= @s fac.bank_retire run scoreboard players operation @s Money += @s fac.bank_retire
execute if entity @s[team=GrandSaule] if score Bank GrandSaule >= @s fac.bank_retire run scoreboard players operation Bank GrandSaule -= @s fac.bank_retire
execute if score Money1 Money < @s Money run tellraw @s ["",{"text":"Tu as fait un retrait de "},{"score":{"name":"@s","objective":"fac.bank_retire"}},{"text":" francs"}]
execute if score Money1 Money >= @s Money run tellraw @s ["",{"text":"Tu ne peux pas retirer plus d'argent qu'il n'y en a dans ta banque!"}]
execute if score Money1 Money < @s Money run summon armor_stand -4050 69 -2960 {Tags:["BankLog","BankR","Pingual"]}
execute if score Money1 Money < @s Money run summon armor_stand -4050 69 -2960 {Tags:["BankLog","BankR","Survivor"]}
execute if score Money1 Money < @s Money run summon armor_stand -4050 69 -2960 {Tags:["BankLog","BankR","Nathfirex"]}
execute if score Money1 Money < @s Money run summon armor_stand -4050 69 -2960 {Tags:["BankLog","BankR","Le_Buildist"]}
execute if score Money1 Money < @s Money run summon armor_stand -4050 69 -2960 {Tags:["BankLog","BankR","Chica"]}
execute if score Money1 Money < @s Money run summon armor_stand -4050 69 -2960 {Tags:["BankLog","BankR","GrandSaule"]}
execute if score Money1 Money < @s Money run scoreboard players add @e[tag=BankLog] BankID 1
execute if score Money1 Money < @s Money if entity @e[type=armor_stand,tag=BankR,scores={BankID=1}] run data merge block 0 55 0 {Text1:'{"selector":"@a[scores={fac.bank_retire=1..}]"}'}
execute if score Money1 Money < @s Money as @e[type=armor_stand,tag=BankR,scores={BankID=1}] run data modify entity @s CustomName set from block 0 55 0 Text1
execute if score Money1 Money < @s Money run summon armor_stand -4050 69 -2960 {Tags:["NbBank","Pingual"]}
execute if score Money1 Money < @s Money run summon armor_stand -4050 69 -2960 {Tags:["NbBank","Survivor"]}
execute if score Money1 Money < @s Money run summon armor_stand -4050 69 -2960 {Tags:["NbBank","Nathfirex"]}
execute if score Money1 Money < @s Money run summon armor_stand -4050 69 -2960 {Tags:["NbBank","Le_Buildist"]}
execute if score Money1 Money < @s Money run summon armor_stand -4050 69 -2960 {Tags:["NbBank","Chica"]}
execute if score Money1 Money < @s Money run summon armor_stand -4050 69 -2960 {Tags:["NbBank","GrandSaule"]}
execute if score Money1 Money < @s Money run scoreboard players add @e[tag=NbBank] BankID 1
execute if score Money1 Money < @s Money if entity @e[type=armor_stand,tag=NbBank,scores={BankID=1}] run data merge block 0 55 0 {Text1:'{"score":{"name":"@a[scores={fac.bank_retire=1..}]","objective":"fac.bank_retire"}}'}
execute if score Money1 Money < @s Money as @e[type=armor_stand,tag=NbBank,scores={BankID=1}] run data modify entity @s CustomName set from block 0 55 0 Text1
kill @e[type=armor_stand,scores={BankID=11..}]
scoreboard players reset @s fac.bank_retire