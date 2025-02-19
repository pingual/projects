function obscurion:faction/trigger
execute as @a[tag=!fac] run scoreboard players enable @s fac.join
execute as @a[tag=fac] run scoreboard players enable @s fac.leave
execute as @a run scoreboard players enable @s fac.info
execute as @a[tag=droitG] run scoreboard players enable @s fac.eject
execute as @a[tag=droitCo] run scoreboard players enable @s fac.promote
execute as @a[tag=droitCo] run scoreboard players enable @s fac.reduce
execute as @a[tag=droitCa] run scoreboard players enable @s fac.claim
execute as @a[tag=droitCa] run scoreboard players enable @s fac.unclaim
execute as @a[tag=droitG] run scoreboard players enable @s fac.ally
execute as @a[tag=droitG] run scoreboard players enable @s fac.ally_break
execute as @a[tag=droitCa] run scoreboard players enable @s fac.bank_deposit
execute as @a[tag=droitCa] run scoreboard players enable @s fac.bank_retire
execute as @a[tag=droitCi] run scoreboard players enable @s fac.bank_info
execute as @a[tag=droitCo] run scoreboard players enable @s fac.bank_log
execute as @a[tag=droitCa] run scoreboard players enable @s war.start
execute as @a run scoreboard players enable @s fac.help
execute as @a[nbt={Dimension:"minecraft:overworld"}] run function obscurion:faction/adventure
execute as @a[nbt=!{Dimension:"minecraft:overworld"}] run function obscurion:faction/adventurenether
function particle:main
function economy:main
function obscurion:montre
function fly:main
function item:main
function alcool:main
function classes:main
function advancement:main
function new_advancements:main
execute as @e[type=wandering_trader,tag=!WTF] run function wandering_trader:debut
execute as @a[scores={spawn=1..}] run tp @s -4046.51 77.00 -2958.42 -359.99 -1.49
scoreboard players reset @a[scores={spawn=1..}] spawn
scoreboard players enable @a spawn
execute as @a[scores={discord=1..}] run tellraw @s {"text":"Clique ici pour rejoindre le serveur discord","clickEvent":{"action":"open_url","value":"https://discord.gg/W9UkPet7by"},"hoverEvent":{"action":"show_text","contents":"Clique ici pour rejoindre le serveur discord"}}
scoreboard players reset @a[scores={discord=1..}] discord
scoreboard players enable @a discord
execute as @a[scores={dynmap=1..}] run tellraw @s {"text":"Clique ici pour voir la map du serveur en temps réel","clickEvent":{"action":"open_url","value":"http://game5-fr.hosterfy.com:60718/"},"hoverEvent":{"action":"show_text","contents":"Clique ici pour voir la map du serveur en temps réel"}}
scoreboard players reset @a[scores={dynmap=1..}] dynmap
scoreboard players enable @a dynmap
execute as @e[type=area_effect_cloud,nbt={Age:2000000001}] run data merge entity @s {Age:0}
execute at @e[type=area_effect_cloud,tag=MobSpawnPas] as @e[type=player,gamemode=survival,distance=..10] run gamemode adventure @s
execute as @a[scores={identifiant=1..}] run tellraw @s ["",{"text":"Ton identifiant est: "},{"score":{"name":"@s","objective":"id"},"bold":true,"underlined":true}]
scoreboard players reset @a[scores={identifiant=1..}] identifiant
scoreboard players enable @a identifiant
execute as @e[type=tnt] at @s if block ~ 319 ~ light run summon item ~ ~ ~ {id:"minecraft:tnt"}
execute as @e[type=tnt] at @s if block ~ 319 ~ light run kill @s
execute as @a run scoreboard players operation @s TempsDeJeu = @s TempsJeu
execute as @a run scoreboard players operation @s TempsDeJeu /= 72000 TempsJeu