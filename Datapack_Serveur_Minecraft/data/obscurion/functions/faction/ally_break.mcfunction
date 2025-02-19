tellraw @s[tag=!ally_break] ["",{"text":"Avec quelle faction ne veux-tu plus être allié?\n "},{"text":"Ilunis","color": "blue","clickEvent":{"action":"run_command","value":"/trigger fac.ally_break set 80"}},{"text":"\n"},{"text":"République Communiste Impériale du Furet (R.C.I.F)","color": "red","clickEvent":{"action":"run_command","value":"/trigger fac.ally_break set 81"}},{"text":"\n"},{"text":"Arcade","color": "gold","clickEvent":{"action":"run_command","value":"/trigger fac.ally_break set 82"}},{"text":"\n"},{"text":"Guilde des Aventuriers","color": "dark_red","clickEvent":{"action":"run_command","value":"/trigger fac.ally_break set 83"}},{"text":"\n"},{"text":"Domination Impériale De l’Axolotl (D.I.D.A)","color": "light_purple","clickEvent":{"action":"run_command","value":"/trigger fac.ally_break set 84"}},{"text":"\n"},{"text":"République Sénatoriale de la Cité","color": "dark_green","clickEvent":{"action":"run_command","value":"/trigger fac.ally_break set 85"}}]
tag @s add ally_break
execute as @s[scores={fac.ally_break=80},team=Pingual] run tag @s add ally_error
execute as @s[scores={fac.ally_break=80},team=Survivor] run scoreboard players set PS ally 0
execute as @s[scores={fac.ally_break=80},team=Nathfirex] run scoreboard players set PN ally 0
execute as @s[scores={fac.ally_break=80},team=Le_Buildist] run scoreboard players set PL ally 0
execute as @s[scores={fac.ally_break=80},team=Chica] run scoreboard players set PC ally 0
execute as @s[scores={fac.ally_break=80},team=GrandSaule] run scoreboard players set PG ally 0
execute as @s[scores={fac.ally_break=80},tag=!ally_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" ne veut plus faire d'alliance avec la faction Ilunis!"}]
execute as @s[scores={fac.ally_break=81},team=Pingual] run scoreboard players set SP ally 0
execute as @s[scores={fac.ally_break=81},team=Survivor] run tag @s add ally_error
execute as @s[scores={fac.ally_break=81},team=Nathfirex] run scoreboard players set SN ally 0
execute as @s[scores={fac.ally_break=81},team=Le_Buildist] run scoreboard players set SL ally 0
execute as @s[scores={fac.ally_break=81},team=Chica] run scoreboard players set SC ally 0
execute as @s[scores={fac.ally_break=81},team=GrandSaule] run scoreboard players set SG ally 0
execute as @s[scores={fac.ally_break=81},tag=!ally_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" ne veut plus faire d'alliance avec la faction RCIF!"}]
execute as @s[scores={fac.ally_break=82},team=Pingual] run scoreboard players set NP ally 0
execute as @s[scores={fac.ally_break=82},team=Survivor] run scoreboard players set NS ally 0
execute as @s[scores={fac.ally_break=82},team=Nathfirex] run tag @s add ally_error
execute as @s[scores={fac.ally_break=82},team=Le_Buildist] run scoreboard players set NL ally 0
execute as @s[scores={fac.ally_break=82},team=Chica] run scoreboard players set NC ally 0
execute as @s[scores={fac.ally_break=82},team=GrandSaule] run scoreboard players set NG ally 0
execute as @s[scores={fac.ally_break=82},tag=!ally_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" ne veut plus faire d'alliance avec la faction Arcade!"}]
execute as @s[scores={fac.ally_break=83},team=Pingual] run scoreboard players set LP ally 0
execute as @s[scores={fac.ally_break=83},team=Survivor] run scoreboard players set LS ally 0
execute as @s[scores={fac.ally_break=83},team=Nathfirex] run scoreboard players set LN ally 0
execute as @s[scores={fac.ally_break=83},team=Le_Buildist] run tag @s add ally_error
execute as @s[scores={fac.ally_break=83},team=Chica] run scoreboard players set LC ally 0
execute as @s[scores={fac.ally_break=83},team=GrandSaule] run scoreboard players set LG ally 0
execute as @s[scores={fac.ally_break=83},tag=!ally_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" ne veut plus faire d'alliance avec la faction Guilde des Aventuriers!"}]
execute as @s[scores={fac.ally_break=84},team=Pingual] run scoreboard players set CP ally 0
execute as @s[scores={fac.ally_break=84},team=Survivor] run scoreboard players set CS ally 0
execute as @s[scores={fac.ally_break=84},team=Nathfirex] run scoreboard players set CN ally 0
execute as @s[scores={fac.ally_break=84},team=Le_Buildist] run scoreboard players set CL ally 0
execute as @s[scores={fac.ally_break=84},team=Chica] run tag @s add ally_error
execute as @s[scores={fac.ally_break=84},team=GrandSaule] run scoreboard players set CG ally 0
execute as @s[scores={fac.ally_break=84},tag=!ally_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" ne veut plus faire d'alliance avec la faction DIDA!"}]
execute as @s[scores={fac.ally_break=85},team=Pingual] run scoreboard players set GP ally 0
execute as @s[scores={fac.ally_break=85},team=Survivor] run scoreboard players set GS ally 0
execute as @s[scores={fac.ally_break=85},team=Nathfirex] run scoreboard players set GN ally 0
execute as @s[scores={fac.ally_break=85},team=Le_Buildist] run scoreboard players set GL ally 0
execute as @s[scores={fac.ally_break=85},team=Chica] run scoreboard players set GC ally 0
execute as @s[scores={fac.ally_break=85},team=GrandSaule] run tag @s add ally_error
execute as @s[scores={fac.ally_break=85},tag=!ally_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" ne veut plus faire d'alliance avec la faction République Sénatoriale de la Cité!"}]
execute as @s[tag=ally_error] run tellraw @s ["",{"text":"Tu ne peux pas retirer d'alliance avec ta propre faction..."}]
execute as @s[scores={fac.ally_break=80..85}] run tag @s remove ally_break
execute as @s[scores={fac.ally_break=80..85}] run tag @s remove ally_error
execute as @s[scores={fac.ally_break=80..85}] run scoreboard players reset @s fac.ally_break