scoreboard objectives add classes.item trigger
scoreboard objectives add classes trigger
scoreboard objectives add kits trigger
scoreboard objectives add classes.spe trigger
scoreboard objectives add classes.heal trigger
scoreboard objectives add classes.support trigger
scoreboard objectives add classes.spawn_horse trigger
scoreboard objectives add ApprentiCD dummy
scoreboard objectives add HealerCD dummy
scoreboard objectives add SupportCD dummy
scoreboard objectives add FeuCD dummy
scoreboard objectives add ChevalCD dummy
scoreboard objectives add ApprentiSec dummy
scoreboard objectives add HealerSec dummy
scoreboard objectives add SupportSec dummy
scoreboard objectives add FeuSec dummy
scoreboard objectives add ChevalSec dummy
scoreboard objectives add SupportMin dummy
scoreboard objectives add FeuMin dummy
scoreboard objectives add ChevalMin dummy
scoreboard objectives add CliqueDroitMage minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add Healer dummy
scoreboard objectives add Support dummy
scoreboard objectives add Feu dummy
scoreboard objectives add Tank dummy
scoreboard objectives add Archer dummy
scoreboard objectives add Assassin dummy
scoreboard objectives add Explorateur dummy
scoreboard objectives add Mineur dummy
scoreboard objectives add Eleveur dummy
scoreboard objectives add CDCheval dummy
scoreboard objectives add Pioche minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add Faux minecraft.used:minecraft.iron_hoe
scoreboard objectives add ChevalID dummy
scoreboard objectives add KitCherche dummy
scoreboard objectives add KitFait dummy
scoreboard objectives add MinecartCD dummy
scoreboard objectives add classes.mag1 trigger
scoreboard objectives add classes.mag2 trigger
scoreboard objectives add classes.mag3 trigger
scoreboard objectives add classes.guer1 trigger
scoreboard objectives add classes.guer2 trigger
scoreboard objectives add classes.guer3 trigger
scoreboard objectives add classes.aven1 trigger
scoreboard objectives add classes.aven2 trigger
scoreboard objectives add classes.aven3 trigger

execute unless score ID ChevalID matches 1.. run scoreboard players set ID ChevalID 0
scoreboard players set 20 ApprentiCD 20
scoreboard players set 60 ApprentiCD 60
scoreboard players set 1200 ApprentiCD 1200