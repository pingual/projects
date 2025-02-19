execute as @s store result score @s x run data get entity @s Pos[0]
execute as @s store result score @s z run data get entity @s Pos[2]
scoreboard players operation @s x %= 16 x
scoreboard players operation @s z %= 16 z
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["Claim"],Duration:9999}
execute as @s run function obscurion:faction/tpx
execute as @s run function obscurion:faction/tpz
execute at @e[tag=Claim] run fill ~ 255 ~ ~15 255 ~15 air replace light
execute at @e[tag=Claim] run tp @e[tag=Claim] ~-5 ~ ~-5
execute at @e[tag=Claim] run fill ~ 255 ~ ~25 255 ~25 air replace light[level=15]
execute at @e[tag=Claim] run tp @e[tag=Claim] ~5 ~ ~5
execute as @e[tag=Claim] run function obscurion:faction/nml
kill @e[tag=Claim]
tellraw @s "Le chunck vient d'être supprimé!"