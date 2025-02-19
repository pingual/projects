scoreboard players add @s CDCheval 1
execute if entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}},distance=..2,scores={Explorateur=1..}] run scoreboard players reset @s CDCheval
execute as @e[type=horse,tag=ChevalExplorateur,scores={CDCheval=200..}] run kill @s