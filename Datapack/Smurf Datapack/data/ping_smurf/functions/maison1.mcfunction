execute at @e[tag=SmurfVillageBuild] run fill ~3 ~ ~ ~2 ~1 ~ minecraft:mushroom_stem
execute at @e[tag=SmurfVillageBuild] run setblock ~1 ~ ~ minecraft:mushroom_stem
execute at @e[tag=SmurfVillageBuild] run fill ~1 ~1 ~1 ~1 ~1 ~2 minecraft:mushroom_stem
execute at @e[tag=SmurfVillageBuild] run setblock ~1 ~ ~3 minecraft:mushroom_stem
execute at @e[tag=SmurfVillageBuild] run fill ~3 ~ ~3 ~2 ~1 ~3 minecraft:mushroom_stem
execute at @e[tag=SmurfVillageBuild] run fill ~4 ~1 ~1 ~4 ~ ~2 minecraft:mushroom_stem
execute at @e[tag=SmurfVillageBuild] run setblock ~1 ~1 ~1 minecraft:birch_door[facing=east,half=upper,hinge=left,open=false,powered=false]
execute at @e[tag=SmurfVillageBuild] run setblock ~1 ~1 ~2 minecraft:birch_door[facing=east,half=upper,hinge=right,open=false,powered=false]
execute at @e[tag=SmurfVillageBuild] run setblock ~1 ~ ~1 minecraft:birch_door[facing=east,half=lower,hinge=left,open=false,powered=false]
execute at @e[tag=SmurfVillageBuild] run setblock ~1 ~ ~2 minecraft:birch_door[facing=east,half=lower,hinge=right,open=false,powered=false]




execute at @e[tag=SmurfVillageBuild] run setblock ~1 ~1 ~ note_block
execute at @e[tag=SmurfVillageBuild] run setblock ~1 ~1 ~3 note_block

execute at @e[tag=SmurfVillageBuild] run setblock ~ ~1 ~ minecraft:stone_button[face=wall,facing=west]
execute at @e[tag=SmurfVillageBuild] run setblock ~ ~1 ~3 minecraft:stone_button[face=wall,facing=west]

execute at @e[tag=SmurfVillageBuild] run summon area_effect_cloud ~ ~1 ~ {Duration:2147483647,Tags:["Sonette"]}
execute at @e[tag=SmurfVillageBuild] run summon area_effect_cloud ~ ~1 ~3 {Duration:2147483647,Tags:["Sonette"]}

execute at @e[tag=SmurfVillageBuild] run fill ~1 ~-1 ~1 ~3 ~-1 ~2 minecraft:mushroom_stem
execute at @e[tag=SmurfVillageBuild] run setblock ~3 ~ ~2 light_blue_bed[facing=north,part=foot]
execute at @e[tag=SmurfVillageBuild] run setblock ~3 ~ ~1 light_blue_bed[facing=north,part=head]



execute at @e[tag=SmurfVillageBuild] run setblock ~4 ~2 ~1 minecraft:chest[facing=west,type=right,waterlogged=false]{Items:[{Slot:0b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:1b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:2b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:4b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:8b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:9b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:13b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:14b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:16b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:17b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:18b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:19b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:20b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:22b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:24b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:26b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}}]}
execute at @e[tag=SmurfVillageBuild] run setblock ~4 ~2 ~2 minecraft:chest[facing=west,type=left,waterlogged=false]{Items:[{Slot:2b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:4b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:8b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:9b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:10b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:11b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:13b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{Slot:17b,id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}}]}
execute at @e[tag=SmurfVillageBuild] run fill ~3 ~3 ~-1 ~2 ~2 ~-1 minecraft:red_mushroom_block
execute at @e[tag=SmurfVillageBuild] run fill ~4 ~3 ~ ~4 ~2 ~ minecraft:red_mushroom_block
execute at @e[tag=SmurfVillageBuild] run fill ~5 ~3 ~1 ~5 ~2 ~2 minecraft:red_mushroom_block
execute at @e[tag=SmurfVillageBuild] run fill ~4 ~3 ~3 ~4 ~2 ~3 minecraft:red_mushroom_block
execute at @e[tag=SmurfVillageBuild] run fill ~3 ~3 ~4 ~2 ~2 ~4 minecraft:red_mushroom_block
execute at @e[tag=SmurfVillageBuild] run fill ~1 ~3 ~3 ~1 ~2 ~3 minecraft:red_mushroom_block
execute at @e[tag=SmurfVillageBuild] run fill ~ ~3 ~1 ~ ~2 ~2 minecraft:red_mushroom_block
execute at @e[tag=SmurfVillageBuild] run fill ~1 ~3 ~ ~1 ~2 ~ minecraft:red_mushroom_block
execute at @e[tag=SmurfVillageBuild] run fill ~3 ~4 ~ ~2 ~4 ~ minecraft:red_mushroom_block
execute at @e[tag=SmurfVillageBuild] run fill ~3 ~4 ~3 ~2 ~4 ~3 minecraft:red_mushroom_block
execute at @e[tag=SmurfVillageBuild] run fill ~1 ~4 ~1 ~1 ~4 ~2 minecraft:red_mushroom_block
execute at @e[tag=SmurfVillageBuild] run fill ~4 ~4 ~1 ~4 ~4 ~2 minecraft:red_mushroom_block
execute at @e[tag=SmurfVillageBuild] run fill ~2 ~5 ~1 ~3 ~5 ~2 minecraft:red_mushroom_block

execute at @e[tag=SmurfVillageBuild] run fill ~2 ~4 ~1 ~3 ~4 ~2 lantern[hanging=true]
