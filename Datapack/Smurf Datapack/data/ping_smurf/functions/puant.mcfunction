execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet",Count:1b,tag:{Tags:["Puant"]}}]}] run tag @s add puant
execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate",Count:1b,tag:{Tags:["Puant"]}}]}] run tag @s add puant
execute as @a[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings",Count:1b,tag:{Tags:["Puant"]}}]}] run tag @s add puant
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots",Count:1b,tag:{Tags:["Puant"]}}]}] run tag @s add puant

execute at @a[tag=puant] as @a[distance=0.1..10] run tag @s add pued

execute as @a[tag=pued] run effect give @s nausea 999999 2 true
execute as @a[tag=pued] run effect give @s mining_fatigue 999999 0 true
execute as @a[tag=pued] run effect give @s slowness 999999 4 true
execute as @a[tag=pued] run effect give @s weakness 999999 2 true

execute as @a[tag=pued] run tag @s add pue
execute as @a[tag=pued] run tag @s remove pued

execute as @a[tag=pue] at @s unless entity @a[tag=puant,distance=..15] run effect clear @s nausea
execute as @a[tag=pue] at @s unless entity @a[tag=puant,distance=..15] run effect clear @s mining_fatigue
execute as @a[tag=pue] at @s unless entity @a[tag=puant,distance=..15] run effect clear @s slowness
execute as @a[tag=pue] at @s unless entity @a[tag=puant,distance=..15] run effect clear @s weakness
execute as @a[tag=pue] at @s unless entity @a[tag=puant,distance=..15] run tag @s remove pue

execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:iron_helmet",Count:1b,tag:{Tags:["Puant"]}}]},nbt=!{Inventory:[{Slot:102b,id:"minecraft:iron_chestplate",Count:1b,tag:{Tags:["Puant"]}}]},nbt=!{Inventory:[{Slot:101b,id:"minecraft:iron_leggings",Count:1b,tag:{Tags:["Puant"]}}]},nbt=!{Inventory:[{Slot:100b,id:"minecraft:iron_boots",Count:1b,tag:{Tags:["Puant"]}}]}] run tag @s remove puant
