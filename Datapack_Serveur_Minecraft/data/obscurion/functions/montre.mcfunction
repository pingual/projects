execute store result score Temps JourNuit run time query daytime
scoreboard players operation Heure JourNuit = Temps JourNuit
scoreboard players operation Minutes JourNuit = Heure JourNuit
scoreboard players operation Minutes JourNuit %= 1000 JourNuit
scoreboard players operation Secondes JourNuit = Minutes JourNuit
scoreboard players operation Heure JourNuit /= 1000 JourNuit
scoreboard players operation Minutes JourNuit /= 17 JourNuit
scoreboard players operation Secondes JourNuit %= 17 JourNuit
scoreboard players operation Secondes JourNuit *= 3 JourNuit
scoreboard players operation Heure JourNuit += 6 JourNuit
scoreboard players operation Heure JourNuit %= 24 JourNuit
title @a[nbt={SelectedItem:{id:"minecraft:clock"}}] actionbar ["",{"text":"Il est "},{"score":{"name":"Heure","objective":"JourNuit"}},{"text":"h, "},{"score":{"name":"Minutes","objective":"JourNuit"}},{"text":"min et "},{"score":{"name":"Secondes","objective":"JourNuit"}},{"text":"sec"}]
title @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]}] actionbar ["",{"text":"Il est "},{"score":{"name":"Heure","objective":"JourNuit"}},{"text":"h, "},{"score":{"name":"Minutes","objective":"JourNuit"}},{"text":"min et "},{"score":{"name":"Secondes","objective":"JourNuit"}},{"text":"sec"}]