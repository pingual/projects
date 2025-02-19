execute if score @s x matches 1.. as @e[tag=Claim] at @s run tp @s ~-1 ~ ~
execute if score @s x matches 1.. run scoreboard players remove @s x 1
execute if score @s x matches 1.. run function obscurion:faction/tpx