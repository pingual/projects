tag @s add smurfseul
execute at @s as @e[type=villager,tag=Smurf] if score @s SmurfId = @e[tag=smurfseul] SmurfId as @e[tag=smurfseul] run scoreboard players add mort RandomSmurf 1
execute as @s if score mort RandomSmurf matches 1.. as @e[type=minecraft:villager] at @s if score @s SmurfId = @e[tag=smurfseul,limit=1] SmurfId as @e[tag=smurfseul] run tp @s ~ ~ ~ ~ ~
execute as @s unless score mort RandomSmurf matches 1.. run kill @s
