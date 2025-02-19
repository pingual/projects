scoreboard players operation utilisation id = @s classes.support
execute as @a if score @s id = utilisation id run tag @s add Support
execute as @a[tag=Support] run tellraw @a "Tu viens d'être Supporté!"
execute as @a[tag=Support] run effect give @s absorption 180 2 true
tag @a[tag=Support] remove Support
scoreboard players reset @s classes.support
scoreboard players reset utilisation id
scoreboard players set @s SupportCD 1