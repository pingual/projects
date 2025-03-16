execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["PeureuxSmurf"],Age:1}
execute as @s at @s store result score Rand PeureuxSmurf run data get entity @e[type=area_effect_cloud,tag=PeureuxSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand PeureuxSmurf %= max PeureuxSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=PeureuxSmurf]

execute at @s if score Rand PeureuxSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:1200}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:600}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:300}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:150}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:75}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:37}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:18}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:9}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:4}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:2}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:600},{Id:24,Duration:600}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:300},{Id:24,Duration:300}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:150},{Id:24,Duration:150}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 13 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:75},{Id:24,Duration:75}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 14 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:37},{Id:24,Duration:37}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:18},{Id:24,Duration:18}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 16 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:9},{Id:24,Duration:9}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 17 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:4},{Id:24,Duration:4}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 18 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:2},{Id:24,Duration:2}],HideFlags:34}}}
execute at @s if score Rand PeureuxSmurf matches 19 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:14,Duration:1200},{Id:24,Duration:1200}],HideFlags:34}}}
