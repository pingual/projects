execute if entity @e[type=villager,tag=Bottes,distance=..100] run tellraw @s "Les Bottes d'Hermes sont situés à moins de 100 blocs!"
execute if entity @e[type=villager,tag=Bottes,distance=100..300] run tellraw @s "Les Bottes d'Hermes sont situés entre 100 et 300 blocs!"
execute if entity @e[type=villager,tag=Bottes,distance=300..600] run tellraw @s "Les Bottes d'Hermes sont situés entre 300 et 600 blocs!"
execute if entity @e[type=villager,tag=Bottes,distance=600..900] run tellraw @s "Les Bottes d'Hermes sont situés entre 600 et 900 blocs!"
execute if entity @e[type=villager,tag=Bottes,distance=900..1200] run tellraw @s "Les Bottes d'Hermes sont situés entre 900 et 1200 blocs!"
execute if entity @e[type=villager,tag=Bottes,distance=1200..2400] run tellraw @s "Les Bottes d'Hermes sont situés entre 1200 et 2400 blocs!"
execute if entity @e[type=villager,tag=Bottes,distance=2400..3800] run tellraw @s "Les Bottes d'Hermes sont situés entre 2400 et 3800 blocs!"
execute if entity @e[type=villager,tag=Bottes,distance=3800..5000] run tellraw @s "Les Bottes d'Hermes sont situés entre 3800 et 5000 blocs!"
execute if entity @e[type=villager,tag=Bottes,distance=5000..] run tellraw @s "Les Bottes d'Hermes sont situés à plus de 5000 blocs!"
execute facing entity @e[tag=Bottes] feet run tp @s ~ ~ ~ ~ ~