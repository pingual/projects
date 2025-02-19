scoreboard players operation utilisation id = @s classes.heal
execute as @a if score @s id = utilisation id run tag @s add Heal
execute as @a[tag=Heal] run tellraw @a "Tu viens d'être Healé!"
execute as @a[tag=Heal] run effect give @s regeneration 10 1 true
tag @a[tag=Heal] remove Heal
scoreboard players reset @s classes.heal
scoreboard players reset utilisation id
scoreboard players set @s HealerCD 1