execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["CuisinierSmurf"],Age:1}
execute as @s at @s store result score Rand CuisinierSmurf run data get entity @e[type=area_effect_cloud,tag=CuisinierSmurf,limit=1] UUIDMost 0.00000000023283064
execute as @s at @s run scoreboard players operation Rand CuisinierSmurf %= max CuisinierSmurf
execute as @s at @s run kill @e[type=area_effect_cloud,tag=CuisinierSmurf]

execute at @s if score Rand CuisinierSmurf matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:apple",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 1 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:mushroom_stew",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 2 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bread",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 3 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:porkchop",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 4 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cooked_porkchop",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 5 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:salmon",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 6 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cooked_salmon",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 7 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cod",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 8 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cooked_cod",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 9 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tropical_fish",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 10 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:pufferfish",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 11 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cake",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 12 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cookie",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 13 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cookie",Count:2b}}
execute at @s if score Rand CuisinierSmurf matches 14 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cookie",Count:3b}}
execute at @s if score Rand CuisinierSmurf matches 15 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:melon_slice",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 16 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:beef",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 17 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cooked_beef",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 18 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chicken",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 19 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cooked_chicken",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 20 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:rotten_flesh",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 21 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:spider_eye",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 22 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:carrot",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 23 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:potato",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 24 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:baked_potato",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 25 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:poisonous_potato",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 26 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:pumpkin_pie",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 27 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:rabbit",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 28 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cooked_rabbit",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 29 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:rabbit_stew",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 30 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:mutton",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 31 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cooked_mutton",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 32 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:beetroot",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 33 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:beetroot_soup",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 34 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:honey_bottle",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 35 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bread",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 36 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_apple",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 37 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:enchanted_golden_apple",Count:1b}}
execute at @s if score Rand CuisinierSmurf matches 38 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dried kelp",Count:1b}}
