tellraw @s[tag=!ally] ["",{"text":"Avec quelle faction veux-tu être allié?\n "},{"text":"\n"},{"text":"Ilunis","color": "blue","clickEvent":{"action":"run_command","value":"/trigger fac.ally set 80"}},{"text":"\n"},{"text":"République Communiste Impériale du Furet (R.C.I.F)","color": "red","clickEvent":{"action":"run_command","value":"/trigger fac.ally set 81"}},{"text":"\n"},{"text":"Arcade", "color": "gold","clickEvent":{"action":"run_command","value":"/trigger fac.ally set 82"}},{"text":"\n"},{"text":"Guilde des Aventuriers", "color": "dark_red","clickEvent":{"action":"run_command","value":"/trigger fac.ally set 83"}},{"text":"\n"},{"text":"Domination Impériale De l’Axolotl (D.I.D.A)", "color": "light_purple","clickEvent":{"action":"run_command","value":"/trigger fac.ally set 84"}},{"text":"\n"},{"text":"République Sénatoriale de la Cité","color": "dark_green","clickEvent":{"action":"run_command","value":"/trigger fac.ally set 85"}}]
tag @s add ally
execute as @s[scores={fac.ally=80},team=Ilunis] run tag @s add ally_error
execute as @s[scores={fac.ally=80},team=Survivor] run scoreboard players set PS ally 1
execute as @s[scores={fac.ally=80},team=Nathfirex] run scoreboard players set PN ally 1
execute as @s[scores={fac.ally=80},team=Le_Buildist] run scoreboard players set PL ally 1
execute as @s[scores={fac.ally=80},team=Chica] run scoreboard players set PC ally 1
execute as @s[scores={fac.ally=80},team=GrandSaule] run scoreboard players set PG ally 1
execute as @s[scores={fac.ally=80},tag=!ally_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" propose une alliance à "},{"text":"Ilunis","color": "blue"}]
execute as @s[scores={fac.ally=81},team=Ilunis] run scoreboard players set SP ally 1
execute as @s[scores={fac.ally=81},team=Survivor] run tag @s add ally_error
execute as @s[scores={fac.ally=81},team=Nathfirex] run scoreboard players set SN ally 1
execute as @s[scores={fac.ally=81},team=Le_Buildist] run scoreboard players set SL ally 1
execute as @s[scores={fac.ally=81},team=Chica] run scoreboard players set SC ally 1
execute as @s[scores={fac.ally=81},team=GrandSaule] run scoreboard players set SG ally 1
execute as @s[scores={fac.ally=81},tag=!ally_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" propose une alliance à la "},{"text":"République Communiste Impériale du Furet (R.C.I.F)","color": "red"}]
execute as @s[scores={fac.ally=82},team=Ilunis] run scoreboard players set NP ally 1
execute as @s[scores={fac.ally=82},team=Survivor] run scoreboard players set NS ally 1
execute as @s[scores={fac.ally=82},team=Nathfirex] run tag @s add ally_error
execute as @s[scores={fac.ally=82},team=Le_Buildist] run scoreboard players set NL ally 1
execute as @s[scores={fac.ally=82},team=Chica] run scoreboard players set NC ally 1
execute as @s[scores={fac.ally=82},team=GrandSaule] run scoreboard players set NG ally 1
execute as @s[scores={fac.ally=82},tag=!ally_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" propose une alliance à "},{"text":"Arcade", "color": "gold"}]
execute as @s[scores={fac.ally=83},team=Ilunis] run scoreboard players set LP ally 1
execute as @s[scores={fac.ally=83},team=Survivor] run scoreboard players set LS ally 1
execute as @s[scores={fac.ally=83},team=Nathfirex] run scoreboard players set LN ally 1
execute as @s[scores={fac.ally=83},team=Le_Buildist] run tag @s add ally_error
execute as @s[scores={fac.ally=83},team=Chica] run scoreboard players set LC ally 1
execute as @s[scores={fac.ally=83},team=GrandSaule] run scoreboard players set LG ally 1
execute as @s[scores={fac.ally=83},tag=!ally_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" propose une alliance à la "},{"text":"Guilde des Aventuriers", "color": "dark_red"}]
execute as @s[scores={fac.ally=84},team=Ilunis] run scoreboard players set CP ally 1
execute as @s[scores={fac.ally=84},team=Survivor] run scoreboard players set CS ally 1
execute as @s[scores={fac.ally=84},team=Nathfirex] run scoreboard players set CN ally 1
execute as @s[scores={fac.ally=84},team=Le_Buildist] run scoreboard players set CL ally 1
execute as @s[scores={fac.ally=84},team=Chica] run tag @s add ally_error
execute as @s[scores={fac.ally=84},team=GrandSaule] run scoreboard players set CG ally 1
execute as @s[scores={fac.ally=84},tag=!ally_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" propose une alliance à la "},{"text":"Domination Impériale De l’Axolotl (D.I.D.A)", "color": "light_purple"}]
execute as @s[scores={fac.ally=85},team=Ilunis] run scoreboard players set GP ally 1
execute as @s[scores={fac.ally=85},team=Survivor] run scoreboard players set GS ally 1
execute as @s[scores={fac.ally=85},team=Nathfirex] run scoreboard players set GN ally 1
execute as @s[scores={fac.ally=85},team=Le_Buildist] run scoreboard players set GL ally 1
execute as @s[scores={fac.ally=85},team=Chica] run scoreboard players set GC ally 1
execute as @s[scores={fac.ally=85},team=GrandSaule] run tag @s add ally_error
execute as @s[scores={fac.ally=85},tag=!ally_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" propose une alliance à la "},{"text":"République Sénatoriale de la Cité","color": "dark_green"}]
execute as @s[tag=ally_error] run tellraw @s ["",{"text":"Tu ne peux pas créer d'alliance avec ta propre faction..."}]
execute as @s[scores={fac.ally=80..85}] run tag @s remove ally
execute as @s[scores={fac.ally=80..85}] run tag @s remove ally_error
execute as @s[scores={fac.ally=80..85}] run scoreboard players reset @s fac.ally