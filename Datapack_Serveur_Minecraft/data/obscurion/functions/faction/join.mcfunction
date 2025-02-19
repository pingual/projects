tellraw @s[tag=!fac] ["",{"text":"Quelle faction veux-tu rejoindre?\n "},{"text":"\n"},{"text":"République Communiste Impériale du Furet (R.C.I.F)","color": "red","clickEvent":{"action":"run_command","value":"/trigger fac.join set 81"}},{"text":"\n"},{"text":"Arcade", "color": "gold","clickEvent":{"action":"run_command","value":"/trigger fac.join set 82"}},{"text":"\n"},{"text":"Guilde des Aventuriers", "color": "dark_red","clickEvent":{"action":"run_command","value":"/trigger fac.join set 83"}},{"text":"\n"},{"text":"Domination Impériale De l’Axolotl (D.I.D.A)", "color": "light_purple","clickEvent":{"action":"run_command","value":"/trigger fac.join set 84"}},{"text":"\n"},{"text":"République Sénatoriale de la Cité","color": "dark_green","clickEvent":{"action":"run_command","value":"/trigger fac.join set 85"}},{"text":"\n"},{"text":"Ilunis","color": "blue","clickEvent":{"action":"run_command","value":"/trigger fac.join set 80"}}]
tag @s add fac
scoreboard players enable @s fac.join
execute as @s[scores={fac.join=80}] run team join Ilunis @s
execute as @s[scores={fac.join=80}] run tellraw @a ["",{"text":"Félicitation à "},{"selector":"@s"},{"text":" qui a rejoint "},{"text":"Ilunis!","color": "blue"}]
execute as @s[scores={fac.join=81}] run team join Survivor @s
execute as @s[scores={fac.join=81}] run tellraw @a ["",{"text":"Félicitation à "},{"selector":"@s"},{"text":" qui a rejoint la "},{"text":"République Communiste Impériale du Furet (R.C.I.F)!","color": "red"}]
execute as @s[scores={fac.join=82}] run team join Nathfirex @s
execute as @s[scores={fac.join=82}] run tellraw @a ["",{"text":"Félicitation à "},{"selector":"@s"},{"text":" qui a rejoint "},{"text":"Arcade!", "color": "gold"}]
execute as @s[scores={fac.join=83}] run team join Le_Buildist @s
execute as @s[scores={fac.join=83}] run tellraw @a ["",{"text":"Félicitation à "},{"selector":"@s"},{"text":" qui a rejoint la "},{"text":"Guilde des Aventuriers!", "color": "dark_red"}]
execute as @s[scores={fac.join=84}] run team join Chica @s
execute as @s[scores={fac.join=84}] run tellraw @a ["",{"text":"Félicitation à "},{"selector":"@s"},{"text":" qui a rejoint la "},{"text":"Domination Impériale De l’Axolotl (D.I.D.A)!", "color": "light_purple"}]
execute as @s[scores={fac.join=85}] run team join GrandSaule @s
execute as @s[scores={fac.join=85}] run tellraw @a ["",{"text":"Félicitation à "},{"selector":"@s"},{"text":" qui a rejoint la "},{"text":"République Sénatoriale de la Cité!","color": "dark_green"}]
execute as @s[scores={fac.join=80..85}] run tag @s add fac2
execute as @s[scores={fac.join=80..85}] run tag @s add Citoyen
execute as @s[scores={fac.join=80..85}] run function obscurion:faction/nom_joueur
execute as @s[scores={fac.join=80..85}] run scoreboard players reset @s fac.join