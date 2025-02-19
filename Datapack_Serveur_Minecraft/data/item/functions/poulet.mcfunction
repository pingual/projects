effect give @s absorption 1 255 true
gamerule mobGriefing false
execute at @e[type=item,nbt={Item:{id:"minecraft:egg",Count:1b}},distance=..0.5] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ignited:1}
scoreboard players add @s CDWings 1
execute if score @s CDWings matches 50.. run kill @s
execute as @s run schedule function item:gamerule 2t