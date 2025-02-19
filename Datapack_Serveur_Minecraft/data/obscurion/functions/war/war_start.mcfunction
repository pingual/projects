tellraw @s[tag=!war] ["",{"text":"Contre quelle faction veux-tu être en guerre?\n "},{"text":"Pingual","clickEvent":{"action":"run_command","value":"/trigger war.start set 80"}},{"text":"\n"},{"text":"Survivor","clickEvent":{"action":"run_command","value":"/trigger war.start set 81"}},{"text":"\n"},{"text":"Nathfirex","clickEvent":{"action":"run_command","value":"/trigger war.start set 82"}},{"text":"\n"},{"text":"Le_Buildist","clickEvent":{"action":"run_command","value":"/trigger war.start set 83"}},{"text":"\n"},{"text":"Chica","clickEvent":{"action":"run_command","value":"/trigger war.start set 84"}},{"text":"\n"},{"text":"GrandSaule","clickEvent":{"action":"run_command","value":"/trigger war.start set 85"}}]
tag @s add war
execute as @s[scores={war.start=80},team=Pingual] run tag @s add war_error
execute as @s[scores={war.start=80},team=Survivor] run scoreboard players set PS war 1
execute as @s[scores={war.start=80},team=Nathfirex] run scoreboard players set PN war 1
execute as @s[scores={war.start=80},team=Le_Buildist] run scoreboard players set PL war 1
execute as @s[scores={war.start=80},team=Chica] run scoreboard players set PC war 1
execute as @s[scores={war.start=80},team=GrandSaule] run scoreboard players set PG war 1
execute as @s[scores={war.start=80},tag=!war_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" veut faire une guerre contre la faction Pingual!"}]
execute as @s[scores={war.start=81},team=Pingual] run scoreboard players set SP war 1
execute as @s[scores={war.start=81},team=Survivor] run tag @s add war_error
execute as @s[scores={war.start=81},team=Nathfirex] run scoreboard players set SN war 1
execute as @s[scores={war.start=81},team=Le_Buildist] run scoreboard players set SL war 1
execute as @s[scores={war.start=81},team=Chica] run scoreboard players set SC war 1
execute as @s[scores={war.start=81},team=GrandSaule] run scoreboard players set SG war 1
execute as @s[scores={war.start=81},tag=!war_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" veut faire une guerre contre la faction Survivor!"}]
execute as @s[scores={war.start=82},team=Pingual] run scoreboard players set NP war 1
execute as @s[scores={war.start=82},team=Survivor] run scoreboard players set NS war 1
execute as @s[scores={war.start=82},team=Nathfirex] run tag @s add war_error
execute as @s[scores={war.start=82},team=Le_Buildist] run scoreboard players set NL war 1
execute as @s[scores={war.start=82},team=Chica] run scoreboard players set NC war 1
execute as @s[scores={war.start=82},team=GrandSaule] run scoreboard players set NG war 1
execute as @s[scores={war.start=82},tag=!war_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" veut faire une guerre contre la faction Nathfirex!"}]
execute as @s[scores={war.start=83},team=Pingual] run scoreboard players set LP war 1
execute as @s[scores={war.start=83},team=Survivor] run scoreboard players set LS war 1
execute as @s[scores={war.start=83},team=Nathfirex] run scoreboard players set LN war 1
execute as @s[scores={war.start=83},team=Le_Buildist] run tag @s add war_error
execute as @s[scores={war.start=83},team=Chica] run scoreboard players set LC war 1
execute as @s[scores={war.start=83},team=GrandSaule] run scoreboard players set LG war 1
execute as @s[scores={war.start=83},tag=!war_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" veut faire une guerre contre la faction Le_Buildist!"}]
execute as @s[scores={war.start=84},team=Pingual] run scoreboard players set CP war 1
execute as @s[scores={war.start=84},team=Survivor] run scoreboard players set CS war 1
execute as @s[scores={war.start=84},team=Nathfirex] run scoreboard players set CN war 1
execute as @s[scores={war.start=84},team=Le_Buildist] run scoreboard players set CL war 1
execute as @s[scores={war.start=84},team=Chica] run tag @s add war_error
execute as @s[scores={war.start=84},team=GrandSaule] run scoreboard players set CG war 1
execute as @s[scores={war.start=84},tag=!war_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" veut faire une guerre contre la faction Chica!"}]
execute as @s[scores={war.start=85},team=Pingual] run scoreboard players set GP war 1
execute as @s[scores={war.start=85},team=Survivor] run scoreboard players set GS war 1
execute as @s[scores={war.start=85},team=Nathfirex] run scoreboard players set GN war 1
execute as @s[scores={war.start=85},team=Le_Buildist] run scoreboard players set GL war 1
execute as @s[scores={war.start=85},team=Chica] run scoreboard players set GC war 1
execute as @s[scores={war.start=85},team=GrandSaule] run tag @s add war_error
execute as @s[scores={war.start=85},tag=!war_error] run tellraw @a ["",{"text":"La faction de "},{"selector":"@s"},{"text":" veut faire une guerre contre la faction GrandSaule!"}]
execute as @s[tag=war_error] run tellraw @s ["",{"text":"Tu ne peux pas entrer en guerre contre ta propre faction..."}]
execute as @s[scores={war.start=80..85}] run function obscurion:war/detec_war
execute as @s[scores={war.start=80..85}] run tag @s remove war
execute as @s[scores={war.start=80..85}] run tag @s remove war_error
execute as @s[scores={war.start=80..85}] run scoreboard players reset @s war.start