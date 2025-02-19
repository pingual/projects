execute as @a[scores={particle.type=1..}] run function particle:trigger
execute as @a[scores={particle=1..}] run function particle:add_trigger
scoreboard players reset @a particle
scoreboard players enable @a particle
scoreboard players enable @a particle.type
function particle:particle