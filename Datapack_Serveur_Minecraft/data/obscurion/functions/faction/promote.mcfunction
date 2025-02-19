scoreboard players operation utilisation id = @s fac.promote
execute as @a if score @s id = utilisation id run tag @s add promote
execute as @a[tag=promote] if entity @s[tag=Capitaine] run function obscurion:faction/verifcommandant
execute as @a[tag=promote] if entity @s[tag=Membre] run function obscurion:faction/verifcapitaine
execute as @a[tag=promote] if entity @s[tag=Citoyen] run function obscurion:faction/verifmembre
execute as @a[tag=promote] run function obscurion:faction/droit
execute as @a[tag=promote] run tag @s remove promote
scoreboard players reset @a fac.promote
scoreboard players reset utilisation id