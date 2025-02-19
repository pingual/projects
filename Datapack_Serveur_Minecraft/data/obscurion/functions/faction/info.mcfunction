tellraw @s[tag=!info] ["",{"text":"De quelle faction veux-tu connaître les informtions?\n "},{"text":"\n"},{"text":"Ilunis","color": "blue","clickEvent":{"action":"run_command","value":"/trigger fac.info set 80"}},{"text":"\n"},{"text":"République Communiste Impériale du Furet (R.C.I.F)","color": "red","clickEvent":{"action":"run_command","value":"/trigger fac.info set 81"}},{"text":"\n"},{"text":"Arcade", "color": "gold","clickEvent":{"action":"run_command","value":"/trigger fac.info set 82"}},{"text":"\n"},{"text":"Guilde des Aventuriers", "color": "dark_red","clickEvent":{"action":"run_command","value":"/trigger fac.info set 83"}},{"text":"\n"},{"text":"Domination Impériale De l’Axolotl (D.I.D.A)", "color": "light_purple","clickEvent":{"action":"run_command","value":"/trigger fac.info set 84"}},{"text":"\n"},{"text":"République Sénatoriale de la Cité","color": "dark_green","clickEvent":{"action":"run_command","value":"/trigger fac.info set 85"}}]
tag @s add info
scoreboard players enable @s fac.info
tag @s[scores={fac.info=80}] add PingualInfo
tag @s[scores={fac.info=81}] add SurvivorInfo
tag @s[scores={fac.info=82}] add NathfirexInfo
tag @s[scores={fac.info=83}] add Le_BuildistInfo
tag @s[scores={fac.info=84}] add ChicaInfo
tag @s[scores={fac.info=85}] add GrandSauleInfo
execute as @s[tag=PingualInfo] run function obscurion:faction/affiche_info_p
execute as @s[tag=SurvivorInfo] run function obscurion:faction/affiche_info_s
execute as @s[tag=NathfirexInfo] run function obscurion:faction/affiche_info_n
execute as @s[tag=Le_BuildistInfo] run function obscurion:faction/affiche_info_l
execute as @s[tag=ChicaInfo] run function obscurion:faction/affiche_info_c
execute as @s[tag=GrandSauleInfo] run function obscurion:faction/affiche_info_g
tag @s[scores={fac.info=80..85}] remove info
scoreboard players reset @a fac.info