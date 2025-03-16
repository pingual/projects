execute as @e[tag=Sonette,tag=!SonetteUse] at @s if block ~ ~ ~ stone_button[powered=true] run playsound minecraft:block.bell.use master @a ~ ~ ~
execute as @e[tag=Sonette] at @s if block ~ ~ ~ stone_button[powered=true] run tag @s add SonetteUse
execute as @e[tag=SonetteUse] at @s if block ~ ~ ~ stone_button[powered=false] run tag @s remove SonetteUse
