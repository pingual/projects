scoreboard players operation utilisation id = @s fac.eject
execute as @a if score @s id = utilisation id run tag @s add eject
execute as @a[tag=eject] if entity @a[tag=eject] run tellraw @a ["",{"selector":"@s"},{"text":" vient de se faire exclure de sa faction!"}]
execute as @a[tag=eject] run team join Vagabond @s
execute as @a[tag=eject] run function obscurion:faction/retiretag
execute as @a[tag=eject] run tag @s remove eject
scoreboard players reset @a fac.eject
scoreboard players reset utilisation id