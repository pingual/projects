execute unless score @s NombreEchange matches 1.. as @s run function wandering_trader:echange/6
execute if score @s NombreEchange matches 1..4 as @s run function wandering_trader:echange
execute as @s[scores={NombreEchange=..4}] run function wandering_trader:debut
tag @s add WTF