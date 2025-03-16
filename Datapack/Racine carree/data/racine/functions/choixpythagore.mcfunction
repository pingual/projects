execute if score @s Cote1 matches 1.. if score @s Cote2 matches 1.. unless score @s Hypotenuse matches 1.. run function racine:calculp1
execute if score @s Cote1 matches 1.. unless score @s Cote2 matches 1.. if score @s Hypotenuse matches 1.. run function racine:calculp2
execute unless score @s Cote1 matches 1.. if score @s Cote2 matches 1.. if score @s Hypotenuse matches 1.. run function racine:calculp3
execute if score @s Cote1 matches 1.. if score @s Cote2 matches 1.. if score @s Hypotenuse matches 1.. run function racine:calculrp
execute unless score @s Cote1 matches 1.. unless score @s Cote2 matches 1.. unless score @s Hypotenuse matches 1.. run title @s title "Erreur, vous devez définir au moins 2 valeurs!"
execute if score @s Cote1 matches 1.. unless score @s Cote2 matches 1.. unless score @s Hypotenuse matches 1.. run title @s title "Erreur, vous devez définir au moins 2 valeurs!"
execute unless score @s Cote1 matches 1.. if score @s Cote2 matches 1.. unless score @s Hypotenuse matches 1.. run title @s title "Erreur, vous devez définir au moins 2 valeurs!"
execute unless score @s Cote1 matches 1.. unless score @s Cote2 matches 1.. if score @s Hypotenuse matches 1.. run title @s title "Erreur, vous devez définir au moins 2 valeurs!"
scoreboard players reset @s GoPythagore
tag @s remove Pythagore
scoreboard players reset @s Cote1t
scoreboard players reset @s Cote2t
scoreboard players reset @s Hypotenuset