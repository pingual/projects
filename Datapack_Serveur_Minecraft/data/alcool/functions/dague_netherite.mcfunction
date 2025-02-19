give @s[scores={Assassin=1..}] minecraft:enchanted_book{Unbreakable:1,display:{Name:'[{"text":"Dague en Netherite","color":"white","italic":false,"bold":true}]'},Enchantments:[{id:"minecraft:infinity",lvl:1}],CustomModelData:3,HideFlags:1,Tags:["Dague"]}
execute unless score @s Assassin matches 1.. run give @s minecraft:enchanted_book{Unbreakable:1,display:{Name:'[{"text":"Dague en Fer","color":"white","italic":false,"bold":true}]'},Enchantments:[{id:"minecraft:infinity",lvl:1}],CustomModelData:1,HideFlags:1,Tags:["Dague"]}
execute unless score @s Assassin matches 1.. run give @s netherite_ingot
execute unless score @s Assassin matches 1.. at @s run playsound minecraft:block.anvil.land master @s
recipe take @s minecraft:dague_netherite
advancement revoke @s from alcool:graal