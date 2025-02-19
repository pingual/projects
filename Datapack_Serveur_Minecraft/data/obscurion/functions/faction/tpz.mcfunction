execute if score @s z matches 1.. as @e[tag=Claim] at @s run tp @s ~ ~ ~-1
execute if score @s z matches 1.. run scoreboard players remove @s z 1
execute unless score @s z matches 0 run function obscurion:faction/tpz