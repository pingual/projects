execute at @s unless block ~ ~ ~ blue_ice run scoreboard players reset @s Bateau
execute if entity @s[scores={Bateau=6400..}] unless score @s DejaVu matches 1.. run advancement grant @s only obscurion:dejavu
execute if entity @s[scores={Bateau=6400..}] unless score @s DejaVu matches 1.. as @a at @s run playsound minecraft:dejavu voice @a ~ ~ ~
execute if entity @s[scores={Bateau=6400..}] unless score @s DejaVu matches 1.. run scoreboard players set @a DejaVuJoue 1
execute if entity @s[scores={Bateau=6400..}] unless score @s DejaVu matches 1.. run scoreboard players set @s DejaVu 1
execute if score @s DejaVu matches 1.. unless score @s DejaVuJoue matches 1.. at @s run playsound minecraft:dejavu voice @s ~ ~ ~
execute if score @s DejaVu matches 1.. unless score @s DejaVuJoue matches 1.. at @s run scoreboard players set @s DejaVuJoue 1