execute at @s at @e[tag=!used,type=item,nbt={Item:{id:"minecraft:potato"}},distance=..7] if block ~1 ~ ~ potatoes[age=7] run setblock ~1 ~ ~ air destroy
execute at @s at @e[tag=!used,type=item,nbt={Item:{id:"minecraft:potato"}},distance=..7] if block ~ ~ ~1 potatoes[age=7] run setblock ~ ~ ~1 air destroy
execute at @s at @e[tag=!used,type=item,nbt={Item:{id:"minecraft:potato"}},distance=..7] if block ~-1 ~ ~ potatoes[age=7] run setblock ~-1 ~ ~ air destroy
execute at @s at @e[tag=!used,type=item,nbt={Item:{id:"minecraft:potato"}},distance=..7] if block ~ ~ ~-1 potatoes[age=7] run setblock ~ ~ ~-1 air destroy
execute at @s at @e[tag=!used,type=item,nbt={Item:{id:"minecraft:carrot"}},distance=..7] if block ~1 ~ ~ carrots[age=7] run setblock ~1 ~ ~ air destroy
execute at @s at @e[tag=!used,type=item,nbt={Item:{id:"minecraft:carrot"}},distance=..7] if block ~ ~ ~1 carrots[age=7] run setblock ~ ~ ~1 air destroy
execute at @s at @e[tag=!used,type=item,nbt={Item:{id:"minecraft:carrot"}},distance=..7] if block ~-1 ~ ~ carrots[age=7] run setblock ~-1 ~ ~ air destroy
execute at @s at @e[tag=!used,type=item,nbt={Item:{id:"minecraft:carrot"}},distance=..7] if block ~ ~ ~-1 carrots[age=7] run setblock ~ ~ ~-1 air destroy
execute at @s at @e[tag=!used,type=item,nbt={Item:{id:"minecraft:beetroot"}},distance=..7] if block ~1 ~ ~ beetroots[age=3] run setblock ~1 ~ ~ air destroy
execute at @s at @e[tag=!used,type=item,nbt={Item:{id:"minecraft:beetroot"}},distance=..7] if block ~ ~ ~1 beetroots[age=3] run setblock ~ ~ ~1 air destroy
execute at @s at @e[tag=!used,type=item,nbt={Item:{id:"minecraft:beetroot"}},distance=..7] if block ~-1 ~ ~ beetroots[age=3] run setblock ~-1 ~ ~ air destroy
execute at @s at @e[tag=!used,type=item,nbt={Item:{id:"minecraft:beetroot"}},distance=..7] if block ~ ~ ~-1 beetroots[age=3] run setblock ~ ~ ~-1 air destroy
execute at @s at @e[tag=!used,type=item,nbt={Item:{id:"minecraft:wheat"}},distance=..7] if block ~1 ~ ~ wheat[age=7] run setblock ~1 ~ ~ air destroy
execute at @s at @e[tag=!used,type=item,nbt={Item:{id:"minecraft:wheat"}},distance=..7] if block ~ ~ ~1 wheat[age=7] run setblock ~ ~ ~1 air destroy
execute at @s at @e[tag=!used,type=item,nbt={Item:{id:"minecraft:wheat"}},distance=..7] if block ~-1 ~ ~ wheat[age=7] run setblock ~-1 ~ ~ air destroy
execute at @s at @e[tag=!used,type=item,nbt={Item:{id:"minecraft:wheat"}},distance=..7] if block ~ ~ ~-1 wheat[age=7] run setblock ~ ~ ~-1 air destroy
execute at @s run tag @e[type=minecraft:item] add used