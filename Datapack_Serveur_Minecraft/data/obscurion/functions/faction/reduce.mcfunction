scoreboard players operation utilisation id = @s fac.reduce
execute as @a if score @s id = utilisation id run tag @s add reduce
execute as @a[tag=reduce] if entity @s[tag=Membre] run function obscurion:faction/verifcitoyen2
execute as @a[tag=reduce] if entity @s[tag=Capitaine] run function obscurion:faction/verifmembre2
execute as @a[tag=reduce] if entity @s[tag=Commandant] run function obscurion:faction/verifcapitaine2
execute as @a[tag=reduce] run function obscurion:faction/droit
execute as @a[tag=reduce] run tag @s remove reduce
scoreboard players reset @a fac.reduce
scoreboard players reset utilisation id