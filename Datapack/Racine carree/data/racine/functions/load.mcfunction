tellraw @a ["",{"text":"Datapack chargé!\n"},{"text":"Pour calculer une racine carrée, écrivez /trigger Racine_Carre","clickEvent":{"action":"run_command","value":"/trigger Racine_Carree"}},{"text":"\n"},{"text":"Pour utiliser le théorème de Pythagore, écrivez /trigger Pythagore","clickEvent":{"action":"run_command","value":"/trigger Pythagore"}}]

scoreboard objectives add Racine_Carree trigger
scoreboard objectives add 100000000 dummy
scoreboard objectives add 10000 dummy
scoreboard objectives add 100 dummy
scoreboard objectives add 10 dummy
scoreboard objectives add TestCalcul dummy
scoreboard objectives add SaveX dummy
scoreboard objectives add x dummy
scoreboard objectives add Reste dummy
scoreboard objectives add Fin dummy
scoreboard objectives add Nombre dummy
scoreboard objectives add SaveRacine dummy
scoreboard objectives add ResultatRacine dummy
scoreboard objectives add NombreCalcul dummy
scoreboard objectives add Erreur00 dummy
scoreboard players enable @a Racine_Carree

scoreboard objectives add Pythagore trigger
scoreboard objectives add Cote1 dummy
scoreboard objectives add Cote2 dummy
scoreboard objectives add Hypotenuse dummy
scoreboard objectives add ResultatPythagor dummy
scoreboard objectives add Cote1Calcul dummy
scoreboard objectives add Cote2Calcul dummy
scoreboard objectives add HypotenuseCalcul dummy
scoreboard objectives add GoPythagore trigger
scoreboard players enable @a Pythagore
scoreboard objectives add Cote1t trigger
scoreboard objectives add Cote2t trigger
scoreboard objectives add Hypotenuset trigger