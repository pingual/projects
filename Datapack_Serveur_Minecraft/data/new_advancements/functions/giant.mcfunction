summon minecraft:giant ~ ~ ~ {Passengers:[{id:zombie,Tags:["Titan"],ArmorItems:[{},{},{},{id:"minecraft:diamond_helmet",tag:{Unbreakable:1},Count:1}],ArmorDropChances:[0F,0F,0F,0F]}]}
tp @s ~ -100 ~
kill @s
execute as @a[sort=nearest,limit=1] unless score @s SpawnTitan matches 1.. run advancement grant @s only obscurion:spawn_titan
execute as @a[sort=nearest,limit=1] unless score @s SpawnTitan matches 1.. run scoreboard players set @s SpawnTitan 1