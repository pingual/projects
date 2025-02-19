execute as @a[scores={SandwichMange=1..}] if score @s Sandwich matches 1.. run effect give @s minecraft:saturation 1 5 true
execute as @a[scores={Sandwich=1..}] run scoreboard players add @s SandwichCD 1
execute as @a[scores={SandwichCD=4..}] run scoreboard players reset @s Sandwich
execute as @a[scores={SandwichCD=4..}] run scoreboard players reset @s SandwichCD
execute as @a[nbt={SelectedItem:{"id":"minecraft:golden_carrot",tag:{CustomModelData:1}}}] run scoreboard players set @s Sandwich 1
execute as @a[nbt={SelectedItem:{"id":"minecraft:golden_carrot",tag:{CustomModelData:1}}}] run scoreboard players reset @s SandwichCD
scoreboard players reset @a[scores={SandwichMange=1..}] SandwichMange
clear @a knowledge_book