execute as @a[tag=SpawnSmurf] at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["randomsmurf"],Age:1}
execute as @a[tag=SpawnSmurf] at @s store result score @s RandomSmurf run data get entity @e[type=area_effect_cloud,tag=randomsmurf,limit=1] UUIDMost 0.00000000023283064
execute as @a[tag=SpawnSmurf] at @s run scoreboard players operation @s RandomSmurf %= max RandomSmurf
execute as @a[tag=SpawnSmurf] at @s run kill @e[type=area_effect_cloud,tag=randomsmurf]

execute as @a[scores={RandomSmurf=1}] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:["SmurfVillageStart","SmurfVillageBuild"]}


execute as @a[scores={RandomSmurf=1}] at @s run say Smurf
execute as @e[tag=SmurfVillageStart] at @s run spreadplayers ~ ~ 1 50 false @s
execute as @e[tag=SmurfVillageStart] at @s if entity @e[tag=Gargamel,distance=..50] run kill @s
execute as @e[tag=SmurfVillageStart] run tag @s remove SmurfVillageStart
execute as @e[tag=SmurfVillageBuild] run function ping_smurf:maisons
