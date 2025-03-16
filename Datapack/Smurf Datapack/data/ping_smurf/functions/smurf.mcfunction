execute at @e[tag=Smurf,type=villager] as @e[tag=Smurf,type=armor_stand,sort=nearest,limit=1] if score @s SmurfId = @e[tag=Smurf,type=villager,sort=nearest,limit=1] SmurfId run tp @s ~ ~ ~ ~ ~
execute as @e[tag=Smurf,type=armor_stand] at @s unless score @s SmurfId = @e[tag=Smurf,type=villager,sort=nearest,limit=1] SmurfId run function ping_smurf:mort
execute as @e[tag=Smurf,type=villager] run data modify entity @s Age set value -6000
execute as @e[tag=Smurf,type=villager] run effect give @s invisibility 1 0 true
