execute as @s store result score @s x run data get entity @s Pos[0]
execute as @s store result score @s z run data get entity @s Pos[2]
scoreboard players operation @s x %= 16 x
scoreboard players operation @s z %= 16 z
tellraw @a {"score":{"name":"@s","objective":"x"}}
tellraw @a {"score":{"name":"@s","objective":"z"}}
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["Claim","non_id"],Duration:9999}
execute as @s run function obscurion:faction/tpx
execute as @s run function obscurion:faction/tpz
execute as @s[team=Pingual] run tag @e[tag=non_id] add Pingual
execute as @s[team=Survivor] run tag @e[tag=non_id] add Survivor
execute as @s[team=Nathfirex] run tag @e[tag=non_id] add Nathfirex
execute as @s[team=Le_Buildist] run tag @e[tag=non_id] add Le_Buildist
execute as @s[team=Chica] run tag @e[tag=non_id] add Chica
execute as @s[team=GrandSaule] run tag @e[tag=non_id] add GrandSaule
execute at @e[tag=non_id] if block ~ 255 ~ light unless block ~ 255 ~ light[level=15] run title @s title "ERREUR, le chunk est déjà claim!"
execute as @e[tag=non_id] at @s if block ~ 255 ~ light unless block ~ 255 ~ light[level=15] run kill @s
tag @e[tag=non_id] remove non_id
execute as @e[tag=Claim,tag=Pingual] if score ClaimDispo Pingual matches 1.. run function obscurion:faction/nomanslandnether
execute as @e[tag=Claim,tag=Survivor] if score ClaimDispo Survivor matches 1.. run function obscurion:faction/nomanslandnether
execute as @e[tag=Claim,tag=Nathfirex] if score ClaimDispo Nathfirex matches 1.. run function obscurion:faction/nomanslandnether
execute as @e[tag=Claim,tag=Le_Buildist] if score ClaimDispo Le_Buildist matches 1.. run function obscurion:faction/nomanslandnether
execute as @e[tag=Claim,tag=Chica] if score ClaimDispo Chica matches 1.. run function obscurion:faction/nomanslandnether
execute as @e[tag=Claim,tag=GrandSaule] if score ClaimDispo GrandSaule matches 1.. run function obscurion:faction/nomanslandnether
execute at @e[tag=Claim,tag=Pingual] if score ClaimDispo Pingual matches 1.. run fill ~ 255 ~ ~15 255 ~15 light[level=1]
execute at @e[tag=Claim,tag=Survivor] if score ClaimDispo Survivor matches 1.. run fill ~ 255 ~ ~15 255 ~15 light[level=2]
execute at @e[tag=Claim,tag=Nathfirex] if score ClaimDispo Nathfirex matches 1.. run fill ~ 255 ~ ~15 255 ~15 light[level=3]
execute at @e[tag=Claim,tag=Le_Buildist] if score ClaimDispo Le_Buildist matches 1.. run fill ~ 255 ~ ~15 255 ~15 light[level=4]
execute at @e[tag=Claim,tag=Chica] if score ClaimDispo Chica matches 1.. run fill ~ 255 ~ ~15 255 ~15 light[level=5]
execute at @e[tag=Claim,tag=GrandSaule] if score ClaimDispo GrandSaule matches 1.. run fill ~ 255 ~ ~15 255 ~15 light[level=6]
execute at @e[tag=Claim,tag=Pingual] unless score ClaimDispo Pingual matches 1.. run title @a[scores={fac.claim=1..}] title "ERREUR, tu n'as plus assez de power!"
execute at @e[tag=Claim,tag=Survivor] unless score ClaimDispo Survivor matches 1.. run title @a[scores={fac.claim=1..}] title "ERREUR, tu n'as plus assez de power!"
execute at @e[tag=Claim,tag=Nathfirex] unless score ClaimDispo Nathfirex matches 1.. run title @a[scores={fac.claim=1..}] title "ERREUR, tu n'as plus assez de power!"
execute at @e[tag=Claim,tag=Le_Buildist] unless score ClaimDispo Le_Buildist matches 1.. run title @a[scores={fac.claim=1..}] title "ERREUR, tu n'as plus assez de power!"
execute at @e[tag=Claim,tag=Chica] unless score ClaimDispo Chica matches 1.. run title @a[scores={fac.claim=1..}] title "ERREUR, tu n'as plus assez de power!"
execute at @e[tag=Claim,tag=GrandSaule] unless score ClaimDispo GrandSaule matches 1.. run title @a[scores={fac.claim=1..}] title "ERREUR, tu n'as plus assez de power!"
execute at @e[tag=Claim,tag=Pingual] if score ClaimDispo Pingual matches 1.. run scoreboard players add ClaimUse Pingual 1
execute at @e[tag=Claim,tag=Survivor] if score ClaimDispo Survivor matches 1.. run scoreboard players add ClaimUse Survivor 1
execute at @e[tag=Claim,tag=Nathfirex] if score ClaimDispo Nathfirex matches 1.. run scoreboard players add ClaimUse Nathfirex 1
execute at @e[tag=Claim,tag=Le_Buildist] if score ClaimDispo Le_Buildist matches 1.. run scoreboard players add ClaimUse Le_Buildist 1
execute at @e[tag=Claim,tag=Chica] if score ClaimDispo Chica matches 1.. run scoreboard players add ClaimUse Chica 1
execute at @e[tag=Claim,tag=GrandSaule] if score ClaimDispo GrandSaule matches 1.. run scoreboard players add ClaimUse GrandSaule 1
execute at @e[tag=Claim,tag=Pingual] if score ClaimDispo Pingual matches 1.. run scoreboard players remove ClaimDispo Pingual 1
execute at @e[tag=Claim,tag=Survivor] if score ClaimDispo Survivor matches 1.. run scoreboard players remove ClaimDispo Survivor 1
execute at @e[tag=Claim,tag=Nathfirex] if score ClaimDispo Nathfirex matches 1.. run scoreboard players remove ClaimDispo Nathfirex 1
execute at @e[tag=Claim,tag=Le_Buildist] if score ClaimDispo Le_Buildist matches 1.. run scoreboard players remove ClaimDispo Le_Buildist 1
execute at @e[tag=Claim,tag=Chica] if score ClaimDispo Chica matches 1.. run scoreboard players remove ClaimDispo Chica 1
execute at @e[tag=Claim,tag=GrandSaule] if score ClaimDispo GrandSaule matches 1.. run scoreboard players remove ClaimDispo GrandSaule 1
kill @e[tag=Claim]
scoreboard players reset @a fac.claim