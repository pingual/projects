execute as @s[team=Pingual] at @s if block ~ 319 ~ light[level=1] run scoreboard players remove ClaimUse Pingual 1
execute as @s[team=Survivor] at @s if block ~ 319 ~ light[level=2] run scoreboard players remove ClaimUse Survivor 1
execute as @s[team=Nathfirex] at @s if block ~ 319 ~ light[level=3] run scoreboard players remove ClaimUse Nathfirex 1
execute as @s[team=Le_Buildist] at @s if block ~ 319 ~ light[level=4] run scoreboard players remove ClaimUse Le_Buildist 1
execute as @s[team=Chica] at @s if block ~ 319 ~ light[level=5] run scoreboard players remove ClaimUse Chica 1
execute as @s[team=GrandSaule] at @s if block ~ 319 ~ light[level=6] run scoreboard players remove ClaimUse GrandSaule 1
execute as @s[team=Pingual] at @s if block ~ 319 ~ light[level=1] run scoreboard players add ClaimDispo Pingual 1
execute as @s[team=Survivor] at @s if block ~ 319 ~ light[level=2] run scoreboard players add ClaimDispo Survivor 1
execute as @s[team=Nathfirex] at @s if block ~ 319 ~ light[level=3] run scoreboard players add ClaimDispo Nathfirex 1
execute as @s[team=Le_Buildist] at @s if block ~ 319 ~ light[level=4] run scoreboard players add ClaimDispo Le_Buildist 1
execute as @s[team=Chica] at @s if block ~ 319 ~ light[level=5] run scoreboard players add ClaimDispo Chica 1
execute as @s[team=GrandSaule] at @s if block ~ 319 ~ light[level=6] run scoreboard players add ClaimDispo GrandSaule 1
execute as @s[team=Pingual] at @s if block ~ 319 ~ light[level=1] run function obscurion:faction/retireclaim
execute as @s[team=Survivor] at @s if block ~ 319 ~ light[level=2] run function obscurion:faction/retireclaim
execute as @s[team=Nathfirex] at @s if block ~ 319 ~ light[level=3] run function obscurion:faction/retireclaim
execute as @s[team=Le_Buildist] at @s if block ~ 319 ~ light[level=4] run function obscurion:faction/retireclaim
execute as @s[team=Chica] at @s if block ~ 319 ~ light[level=5] run function obscurion:faction/retireclaim
execute as @s[team=GrandSaule] at @s if block ~ 319 ~ light[level=6] run function obscurion:faction/retireclaim
scoreboard players reset @a fac.unclaim