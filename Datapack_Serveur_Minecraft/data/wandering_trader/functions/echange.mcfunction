scoreboard players set max RANDOM 6
summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
execute store result score @s RANDOM run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0]
scoreboard players operation @s RANDOM %= max RANDOM
kill @e[type=area_effect_cloud,tag=random]
execute as @s[scores={RANDOM=0}] run function wandering_trader:echange/1
execute as @s[scores={RANDOM=1}] run function wandering_trader:echange/2
execute as @s[scores={RANDOM=2}] run function wandering_trader:echange/3
execute as @s[scores={RANDOM=3}] run function wandering_trader:echange/4
execute as @s[scores={RANDOM=4}] run function wandering_trader:echange/5
execute as @s[scores={RANDOM=5}] run function wandering_trader:echange/7
scoreboard players add @s NombreEchange 1