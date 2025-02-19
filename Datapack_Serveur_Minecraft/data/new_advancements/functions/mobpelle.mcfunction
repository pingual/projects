execute as @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] unless score @s MobPelle matches 1 run function advancement:difficile
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] unless score @s MobPelle matches 1 run advancement grant @a only obscurion:mobpelle
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] unless score @s MobPelle matches 1 run give @s minecraft:name_tag{display:{Name:'[{"text":"SPQR","italic":false}]'}} 1
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] unless score @s MobPelle matches 1 run scoreboard players set @s MobPelle 1
advancement revoke @a only obscurion:mobpelle_hidden