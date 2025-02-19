scoreboard players set @s MyolnireTime 6000
scoreboard players operation @s MyolnireTime -= @s MyolnireCD
scoreboard players operation @s MyolnireMin = @s MyolnireTime
scoreboard players operation @s MyolnireMin /= 1200 MyolnireTime
scoreboard players operation @s MyolnireSec = @s MyolnireTime
scoreboard players operation @s MyolnireSec %= 1200 MyolnireTime
scoreboard players operation @s MyolnireSec /= 20 MyolnireTime
title @s actionbar ["",{"text":"Myolnire ","bold":true,"color":"dark_red"},{"text":"sera rechargé dans "},{"score":{"name":"@s","objective":"MyolnireMin"}},{"text":" minutes et "},{"score":{"name":"@s","objective":"MyolnireSec"}},{"text":" secondes!"}]