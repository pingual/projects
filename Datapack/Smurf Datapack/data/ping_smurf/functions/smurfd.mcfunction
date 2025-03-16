execute as @e[tag=SmurfD1] at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["smurftype"],Age:1}
execute as @e[tag=SmurfD1] at @s run execute store result score @s RandomTSmurf run data get entity @e[type=area_effect_cloud,tag=smurftype,limit=1] UUIDMost 0.00000000023283064
execute as @e[tag=SmurfD1] at @s run scoreboard players operation @s RandomTSmurf %= SmurfTypeMax RandomTSmurf
execute as @e[tag=SmurfD1] at @s run kill @e[type=area_effect_cloud,tag=smurftype]

execute as @e[tag=SmurfD2] at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["smurftype"],Age:1}
execute as @e[tag=SmurfD2] at @s run execute store result score @s RandomTSmurf run data get entity @e[type=area_effect_cloud,tag=smurftype,limit=1] UUIDMost 0.00000000023283064
execute as @e[tag=SmurfD2] at @s run scoreboard players operation @s RandomTSmurf %= SmurfTypeMax RandomTSmurf
execute as @e[tag=SmurfD2] at @s run kill @e[type=area_effect_cloud,tag=smurftype]

execute as @e[tag=SmurfD3] at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["smurftype"],Age:1}
execute as @e[tag=SmurfD3] at @s run execute store result score @s RandomTSmurf run data get entity @e[type=area_effect_cloud,tag=smurftype,limit=1] UUIDMost 0.00000000023283064
execute as @e[tag=SmurfD3] at @s run scoreboard players operation @s RandomTSmurf %= SmurfTypeMax RandomTSmurf
execute as @e[tag=SmurfD3] at @s run kill @e[type=area_effect_cloud,tag=smurftype]



execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 0 run tag @s add LunettesSmurfD
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 1 run tag @s add CuisinierSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 2 run tag @s add ParesseuxSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 3 run tag @s add FarceurSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 4 run tag @s add CostaudSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 5 run tag @s add ForgeronSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 6 run tag @s add CoquetSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 7 run tag @s add GrognonSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 8 run tag @s add GourmandSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 9 run tag @s add VolantSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 10 run tag @s add PuantSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 11 run tag @s add BucheronSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 12 run tag @s add FatigueSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 13 run tag @s add ColereSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 14 run tag @s add NatureSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 15 run tag @s add PecheurSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 16 run tag @s add PaysanSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 17 run tag @s add DouilleSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 18 run tag @s add BricoleurSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 19 run tag @s add BetaSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 20 run tag @s add SauvageSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 21 run tag @s add ApprentiSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 22 run tag @s add PeureuxSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 23 run tag @s add QuestionsSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 24 run tag @s add CosmoSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 25 run tag @s add PoeteSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 26 run tag @s add PeintreSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 27 run tag @s add MaladroitSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 28 run tag @s add ChancardSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 29 run tag @s add MusicienSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 30 run tag @s add MaladeSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 31 run tag @s add TambourSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 32 run tag @s add FrileuxSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 33 run tag @s add PasAutresSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 34 run tag @s add TailleurPSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 35 run tag @s add TailleurVSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 36 run tag @s add MeunierSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 37 run tag @s add PotierSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 38 run tag @s add RamoneurSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 39 run tag @s add LampionsSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 40 run tag @s add ChetifSmurf
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 41 run tag @s add FSmurfD
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 1..40 run tag @s add SSmurfD
execute as @e[tag=SmurfD] if score @s RandomTSmurf matches 0..41 run tag @s remove SmurfD



execute at @e[tag=GrandSmurfD] run summon armor_stand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16711680}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:9201389}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"d4ae2743-9db5-46a3-accd-3c2d1d54753f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTU5MTg5MTVkOWY1ZjhlZGUyMjYyNGMyZjExODAzYjU2OGQ1ZTY1Y2NhNmUxMDhjYmJhNGE5NDA0ZmMzYzQ1MCJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"Grand Schtroumpf\"}",CustomNameVisible:0b,DisabledSlots:1973790,Tags:["GrandSmurf","Smurf"]}
execute at @e[tag=FSmurfD] run summon armor_stand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:9201389}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"b74d98d8-e4bf-4c83-a68c-5b8bf8f922de",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTQyNjE2YzJiYjkxOTYzMjU1NzhmNzM2MjllNTJkNjJjODc2OWNmNmQ0MWEzYjViZGExZTczYzNlNjY5NCJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"Schtroumpfette\"}",CustomNameVisible:0b,DisabledSlots:1973790,Tags:["FSmurf","Smurf"]}
execute at @e[tag=LunettesSmurfD] run summon armor_stand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:9201389}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"bf6fe7ce-fdef-4677-9070-20de0eda7217",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGNjNjIwNTgzMTNiNGEyNjVjMjRmZjE2ZGYxMDE2NWI0NTM4YzFhOTM0N2I3YzdiMzBhMDQyMzNmZWYxOGUyMCJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"Schtroumpf à Lunettes\"}",CustomNameVisible:0b,DisabledSlots:1973790,Tags:["LunettesSmurf","Smurf"]}
execute at @e[tag=SSmurfD] run summon armor_stand ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:9201389}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"f20daec3-7b3a-46ab-8e0c-cf9a3e7be730",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzVlOGVlYTFkYzMyZTMzODQ1MmNlNmJlN2QzZDIzZWQxNjNhYWI0ZmUxZmQ5YjQwYjExNGEyYTJlMmE3OSJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"Schtroumpf\"}",CustomNameVisible:0b,DisabledSlots:1973790,Tags:["SSmurf","Smurf"]}

execute at @e[tag=SmurfD1] as @e[tag=Smurf,type=armor_stand,sort=nearest,limit=1,distance=..1] run scoreboard players operation @s SmurfId = SmurfId SmurfId
execute as @e[tag=SmurfD1] at @s if entity @e[tag=Smurf,type=armor_stand,sort=nearest,limit=1,distance=..1] run scoreboard players operation @s SmurfId = @e[tag=Smurf,type=armor_stand,sort=nearest,limit=1,distance=..1] SmurfId
execute as @e[tag=SmurfD1] run scoreboard players add SmurfId SmurfId 1

execute at @e[tag=SmurfD2] as @e[tag=Smurf,type=armor_stand,sort=nearest,limit=1,distance=..1] run scoreboard players operation @s SmurfId = SmurfId SmurfId
execute as @e[tag=SmurfD2] at @s if entity @e[tag=Smurf,type=armor_stand,sort=nearest,limit=1,distance=..1] run scoreboard players operation @s SmurfId = @e[tag=Smurf,type=armor_stand,sort=nearest,limit=1,distance=..1] SmurfId
execute as @e[tag=SmurfD2] run scoreboard players add SmurfId SmurfId 1

execute at @e[tag=SmurfD3] as @e[tag=Smurf,type=armor_stand,sort=nearest,limit=1,distance=..1] run scoreboard players operation @s SmurfId = SmurfId SmurfId
execute as @e[tag=SmurfD3] at @s if entity @e[tag=Smurf,type=armor_stand,sort=nearest,limit=1,distance=..1] run scoreboard players operation @s SmurfId = @e[tag=Smurf,type=armor_stand,sort=nearest,limit=1,distance=..1] SmurfId
execute as @e[tag=SmurfD3] run scoreboard players add SmurfId SmurfId 1

execute at @e[tag=GrandSmurfD] as @e[tag=Smurf,type=armor_stand,sort=nearest,limit=1,distance=..1] run scoreboard players operation @s SmurfId = SmurfId SmurfId
execute as @e[tag=GrandSmurfD] at @s if entity @e[tag=Smurf,type=armor_stand,sort=nearest,limit=1,distance=..1] run scoreboard players operation @s SmurfId = @e[tag=Smurf,type=armor_stand,sort=nearest,limit=1,distance=..1] SmurfId
execute as @e[tag=GrandSmurfD] run scoreboard players add SmurfId SmurfId 1



execute as @e[tag=SmurfD1] if score @s RandomTSmurf matches 0..43 run tag @s remove SmurfD1
execute as @e[tag=SmurfD2] if score @s RandomTSmurf matches 0..43 run tag @s remove SmurfD2
execute as @e[tag=SmurfD3] if score @s RandomTSmurf matches 0..43 run tag @s remove SmurfD3
execute as @e[tag=GrandSmurfD] run tag @s add GrandSmurf
execute as @e[tag=GrandSmurfD] run tag @s remove GrandSmurfD
execute as @e[tag=FSmurfD] run tag @s add FSmurf
execute as @e[tag=FSmurfD] run tag @s remove FSmurfD
execute as @e[tag=LunettesSmurfD] run tag @s add LunettesSmurf
execute as @e[tag=LunettesSmurfD] run tag @s remove LunettesSmurfD
execute as @e[tag=SSmurfD] run tag @s remove SSmurfD
