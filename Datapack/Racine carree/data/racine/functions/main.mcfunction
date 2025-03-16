execute as @a[scores={Racine_Carree=1}] run function racine:tellrawracine
execute as @a[scores={Racine_Carree=2..9999999}] run function racine:racinecarree
execute as @a[scores={Racine_Carree=100000000..}] run function racine:erreur
execute as @a[scores={Pythagore=1..}] run function racine:debutpythagore
execute as @a[scores={GoPythagore=1..}] run function racine:choixpythagore
execute as @a[tag=Pythagore] if score @s Cote1t matches 1.. run function racine:modifscorepythagore
execute as @a[tag=Pythagore] if score @s Cote2t matches 1.. run function racine:modifscorepythagore
execute as @a[tag=Pythagore] if score @s Hypotenuset matches 1.. run function racine:modifscorepythagore
scoreboard players enable @a Racine_Carree
scoreboard players enable @a Pythagore