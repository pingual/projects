execute as @a[scores={PlayerHead=1..}] at @s store result score @s FarceurS run fill ~5 ~5 ~5 ~-5 ~-1 ~-5 air replace minecraft:player_head{Owner:{Id:"cc5fdd1a-60f8-40d6-b667-a197e39f3bae",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjBhZmE0ZmZmZDEwODYzZTc2YzY5OGRhMmM5YzllNzk5YmNmOWFiOWFhMzdkODMxMjg4MTczNDIyNWQzY2EifX19"}]}}}
execute as @a[scores={PlayerHead=1..}] at @s store result score @s FarceurSW run fill ~5 ~5 ~5 ~-5 ~-1 ~-5 air replace minecraft:player_wall_head{Owner:{Id:"cc5fdd1a-60f8-40d6-b667-a197e39f3bae",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjBhZmE0ZmZmZDEwODYzZTc2YzY5OGRhMmM5YzllNzk5YmNmOWFiOWFhMzdkODMxMjg4MTczNDIyNWQzY2EifX19"}]}}}
execute as @a[scores={PlayerHead=1..}] at @s store result score @s FarceurSm run fill ~5 ~-2 ~5 ~-5 ~-5 ~-5 air replace minecraft:player_head{Owner:{Id:"cc5fdd1a-60f8-40d6-b667-a197e39f3bae",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjBhZmE0ZmZmZDEwODYzZTc2YzY5OGRhMmM5YzllNzk5YmNmOWFiOWFhMzdkODMxMjg4MTczNDIyNWQzY2EifX19"}]}}}
execute as @a[scores={PlayerHead=1..}] at @s store result score @s FarceurSmW run fill ~5 ~-2 ~5 ~-5 ~-5 ~-5 air replace minecraft:player_wall_head{Owner:{Id:"cc5fdd1a-60f8-40d6-b667-a197e39f3bae",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjBhZmE0ZmZmZDEwODYzZTc2YzY5OGRhMmM5YzllNzk5YmNmOWFiOWFhMzdkODMxMjg4MTczNDIyNWQzY2EifX19"}]}}}
execute as @a[scores={FarceurS=1..}] at @s run summon minecraft:creeper ~ ~ ~ {powered:1,CustomName:"\"Cadeau\"",CustomNameVisible:1,PersistenceRequired:1b,Silent:1,Invulnerable:1,Fuse:0,ignited:1}
execute as @a[scores={FarceurSm=1..}] at @s run summon minecraft:creeper ~ ~ ~ {powered:1,CustomName:"\"Cadeau\"",CustomNameVisible:1,PersistenceRequired:1b,Silent:1,Invulnerable:1,Fuse:0,ignited:1}
execute as @a[scores={FarceurSW=1..}] at @s run summon minecraft:creeper ~ ~ ~ {powered:1,CustomName:"\"Cadeau\"",CustomNameVisible:1,PersistenceRequired:1b,Silent:1,Invulnerable:1,Fuse:0,ignited:1}
execute as @a[scores={FarceurSmW=1..}] at @s run summon minecraft:creeper ~ ~ ~ {powered:1,CustomName:"\"Cadeau\"",CustomNameVisible:1,PersistenceRequired:1b,Silent:1,Invulnerable:1,Fuse:0,ignited:1}
scoreboard players remove @a[scores={FarceurS=1..}] FarceurS 1
scoreboard players remove @a[scores={FarceurSW=1..}] FarceurSW 1
scoreboard players remove @a[scores={FarceurSm=1..}] FarceurSm 1
scoreboard players remove @a[scores={FarceurSm=1..}] FarceurSmW 1
scoreboard players reset @a[scores={PlayerHead=1..}] PlayerHead
