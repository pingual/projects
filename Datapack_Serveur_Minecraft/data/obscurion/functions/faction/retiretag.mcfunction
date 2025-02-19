tag @s remove fac
tag @s remove fac2
execute if entity @s[tag=Commandant,team=Pingual] run scoreboard players remove Commandant Pingual 1
execute if entity @s[tag=Capitaine,team=Pingual] run scoreboard players remove Capitaine Pingual 1
execute if entity @s[tag=Membre,team=Pingual] run scoreboard players remove Membre Pingual 1
execute if entity @s[tag=Commandant,team=Survivor] run scoreboard players remove Commandant Survivor 1
execute if entity @s[tag=Capitaine,team=Survivor] run scoreboard players remove Capitaine Survivor 1
execute if entity @s[tag=Membre,team=Survivor] run scoreboard players remove Membre Survivor 1
execute if entity @s[tag=Commandant,team=Nathfirex] run scoreboard players remove Commandant Nathfirex 1
execute if entity @s[tag=Capitaine,team=Nathfirex] run scoreboard players remove Capitaine Nathfirex 1
execute if entity @s[tag=Membre,team=Nathfirex] run scoreboard players remove Membre Nathfirex 1
execute if entity @s[tag=Commandant,team=Le_Buildist] run scoreboard players remove Commandant Le_Buildist 1
execute if entity @s[tag=Capitaine,team=Le_Buildist] run scoreboard players remove Capitaine Le_Buildist 1
execute if entity @s[tag=Membre,team=Le_Buildist] run scoreboard players remove Membre Le_Buildist 1
execute if entity @s[tag=Commandant,team=Chica] run scoreboard players remove Commandant Chica 1
execute if entity @s[tag=Capitaine,team=Chica] run scoreboard players remove Capitaine Chica 1
execute if entity @s[tag=Membre,team=Chica] run scoreboard players remove Membre Chica 1
execute if entity @s[tag=Commandant,team=GrandSaule] run scoreboard players remove Commandant GrandSaule 1
execute if entity @s[tag=Capitaine,team=GrandSaule] run scoreboard players remove Capitaine GrandSaule 1
execute if entity @s[tag=Membre,team=GrandSaule] run scoreboard players remove Membre GrandSaule 1
tag @s remove Commandant
tag @s remove Capitaine
tag @s remove Membre
tag @s remove Citoyen
tag @s remove droitCo
tag @s remove droitCa
tag @s remove droitCi
scoreboard players reset @s fac.claim
scoreboard players reset @s fac.eject
scoreboard players reset @s fac.unclaim
scoreboard players reset @s fac.promote
scoreboard players reset @s fac.reduce
scoreboard players reset @s fac.leave
scoreboard players reset @s fac.ally
scoreboard players reset @s fac.ally_break
scoreboard players reset @s fac.bank_deposit
scoreboard players reset @s fac.bank_retire
scoreboard players reset @s fac.bank_info
scoreboard players reset @s fac.bank_log