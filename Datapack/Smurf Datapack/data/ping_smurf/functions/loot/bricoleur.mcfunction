execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["BricoleurSmurf"],Age:1}
execute as @s at @s store result score Rand BricoleurSmurf run data get entity @e[type=area_effect_cloud,tag=BricoleurSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand BricoleurSmurf %= max BricoleurSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=BricoleurSmurf]

execute at @s if score Rand BricoleurSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:crafting_table",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:coal",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:white_dye",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:orange_dye",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:yellow_dye",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:green_dye",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lime_dye",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:blue_dye",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:light_blue_dye",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:magenta_dye",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 13 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:pink_dye",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 14 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:light_gray_dye",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:black_dye",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 16 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:brown_dye",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 17 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:purple_dye",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 18 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cyan_dye",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 19 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 20 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:blaze_rod",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 21 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:slime_ball",Count:1b}}
execute at @s if score Rand BricoleurSmurf matches 22 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:flint",Count:1b}}
