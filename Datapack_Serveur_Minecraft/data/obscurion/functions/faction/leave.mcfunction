team join Vagabond @s
function obscurion:faction/retiretag
tellraw @a ["",{"selector":"@s"},{"text":" vient de quitter sa faction!"}]
tag @s add quite_fac
execute as @e[type=armor_stand,tag=Pseudo] if score @s id_as = @a[tag=quite_fac,limit=1] id run kill @s
tag @s remove quite_fac
scoreboard players reset @s fac.leave