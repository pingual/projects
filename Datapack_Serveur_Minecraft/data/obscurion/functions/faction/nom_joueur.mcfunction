data merge block -4052 69 -2958 {Text1:'{"selector":"@a[scores={fac.join=80..85}]"}'}
summon armor_stand -4052 69 -2958 {Invisible:1b,Tags:["Pseudo","NewPseudo"],CustomNameVisible:0}
data modify entity @e[tag=NewPseudo,limit=1] CustomName set from block -4052 69 -2958 Text1
scoreboard players operation @e[tag=NewPseudo] id_as = @s id
execute as @s[team=Ilunis] run tag @e[tag=NewPseudo] add Ilunis
execute as @s[team=Survivor] run tag @e[tag=NewPseudo] add Survivor
execute as @s[team=Nathfirex] run tag @e[tag=NewPseudo] add Nathfirex
execute as @s[team=Le_Buildist] run tag @e[tag=NewPseudo] add Le_Buildist
execute as @s[team=Chica] run tag @e[tag=NewPseudo] add Chica
execute as @s[team=GrandSaule] run tag @e[tag=NewPseudo] add GrandSaule
tag @e[tag=NewPseudo] add Name
tag @e[tag=NewPseudo] remove NewPseudo