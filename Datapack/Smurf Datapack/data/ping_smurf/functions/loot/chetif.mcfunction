execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["ChetifSmurf"],Age:1}
execute as @s at @s store result score Rand ChetifSmurf run data get entity @e[type=area_effect_cloud,tag=ChetifSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand ChetifSmurf %= max ChetifSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=ChetifSmurf]
execute at @s if score Rand ChetifSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:2,Duration:1200}],HideFlags:34}}}
execute at @s if score Rand ChetifSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:4,Duration:1200}],HideFlags:34}}}
execute at @s if score Rand ChetifSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:15,Duration:1200}],HideFlags:34}}}
execute at @s if score Rand ChetifSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:18,Duration:1200}],HideFlags:34}}}
execute at @s if score Rand ChetifSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:19,Duration:1200}],HideFlags:34}}}
execute at @s if score Rand ChetifSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:20,Duration:1200}],HideFlags:34}}}
execute at @s if score Rand ChetifSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:27,Duration:1200}],HideFlags:34}}}
execute at @s if score Rand ChetifSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:31,Duration:1200}],HideFlags:34}}}
