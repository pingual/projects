execute as @a at @s if block ~ ~-1 ~ minecraft:mycelium run tag @s add SpawnSmurf
execute as @a at @s if block ~ ~-1 ~ minecraft:podzol run tag @s add SpawnSmurf
execute as @a at @s unless block ~ ~-1 ~ minecraft:podzol unless block ~ ~-1 ~ minecraft:mycelium run tag @s remove SpawnSmurf
execute if entity @a[tag=SpawnSmurf] run function ping_smurf:village

execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet",Count:1b,tag:{Tags:["Puant"]}}]}] run tag @s add puant
execute as @a[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate",Count:1b,tag:{Tags:["Puant"]}}]}] run tag @s add puant
execute as @a[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings",Count:1b,tag:{Tags:["Puant"]}}]}] run tag @s add puant
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots",Count:1b,tag:{Tags:["Puant"]}}]}] run tag @s add puant
execute as @a[tag=puant] run function ping_smurf:puant



execute if entity @e[nbt={HandItems:[{id:"minecraft:dried_kelp",Count:1b,tag:{display:{Name:'{"text":"Salsepareille","color":"white","italic":false}'}}},{}]},tag=Smurf] run function ping_smurf:echange


execute if entity @a[scores={PlayerHead=1..}] run function ping_smurf:farceur

execute at @e[nbt={Item:{id:"minecraft:ghast_tear",Count:1b,tag:{HideFlags:1,Enchantments:[{lvl:1,id:"minecraft:aqua_affinity"}],display:{Name:'{"text":"Pierre Philosophale","color":"white","italic":false}'}}}}] if entity @e[type=minecraft:zombie,distance=..0.5] run function ping_smurf:gargamel



execute as @a[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Lunettes\",\"color\":\"white\",\"italic\":false}"}}}}] if entity @s[nbt={SelectedItem:{id:"minecraft:dark_oak_fence_gate"}}] run scoreboard players enable @s Hat
execute as @a[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Casque de Cosmonaute\",\"color\":\"white\",\"italic\":false}"}}}}] if entity @s[nbt={SelectedItem:{id:"minecraft:glass"}}] run scoreboard players enable @s Hat
execute if entity @a[scores={Hat=1..}] run function ping_smurf:hat
execute if entity @a[scores={HatConfirm=2}] run function ping_smurf:hat



function ping_smurf:salsepareille


execute if entity @e[tag=Sonette] run function ping_smurf:sonette
execute if entity @e[tag=Smurf] run function ping_smurf:smurf
