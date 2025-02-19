execute as @a[gamemode=survival,team=!Pingual] at @s if block ~ 255 ~ light[level=1] run gamemode adventure @s
execute as @a[gamemode=survival,team=!Survivor] at @s if block ~ 255 ~ light[level=2] run gamemode adventure @s
execute as @a[gamemode=survival,team=!Nathfirex] at @s if block ~ 255 ~ light[level=3] run gamemode adventure @s
execute as @a[gamemode=survival,team=!Le_Buildist] at @s if block ~ 255 ~ light[level=4] run gamemode adventure @s
execute as @a[gamemode=survival,team=!Chica] at @s if block ~ 255 ~ light[level=5] run gamemode adventure @s
execute as @a[gamemode=survival,team=!GrandSaule] at @s if block ~ 255 ~ light[level=6] run gamemode adventure @s
execute as @a[gamemode=survival] at @s if block ~ 255 ~ light[level=15] run gamemode adventure @s
execute as @a[gamemode=adventure] at @s unless block ~ 255 ~ light run gamemode survival @s
execute as @a[gamemode=adventure,team=Pingual,tag=Membre] at @s if block ~ 255 ~ light[level=1] run gamemode survival @s
execute as @a[gamemode=adventure,team=Survivor,tag=Membre] at @s if block ~ 255 ~ light[level=2] run gamemode survival @s
execute as @a[gamemode=adventure,team=Nathfirex,tag=Membre] at @s if block ~ 255 ~ light[level=3] run gamemode survival @s
execute as @a[gamemode=adventure,team=Le_Buildist,tag=Membre] at @s if block ~ 255 ~ light[level=4] run gamemode survival @s
execute as @a[gamemode=adventure,team=Chica,tag=Membre] at @s if block ~ 255 ~ light[level=5] run gamemode survival @s
execute as @a[gamemode=adventure,team=GrandSaule,tag=Membre] at @s if block ~ 255 ~ light[level=6] run gamemode survival @s
execute as @a[tag=rentreP] at @s unless block ~ 255 ~ light[level=1] run title @s subtitle "Tu quittes la zone protégée du spawn"
execute as @a[tag=rentreP] at @s unless block ~ 255 ~ light[level=1] run title @s title ""
execute as @a[tag=rentreP] at @s unless block ~ 255 ~ light[level=1] run tag @s remove rentreP
execute as @a[tag=rentreS] at @s unless block ~ 255 ~ light[level=2] run title @s subtitle "Tu quittes le claim de Survivor"
execute as @a[tag=rentreS] at @s unless block ~ 255 ~ light[level=2] run title @s title ""
execute as @a[tag=rentreS] at @s unless block ~ 255 ~ light[level=2] run tag @s remove rentreS
execute as @a[tag=rentreN] at @s unless block ~ 255 ~ light[level=3] run title @s subtitle "Tu quittes le claim de Nathfirex"
execute as @a[tag=rentreN] at @s unless block ~ 255 ~ light[level=3] run title @s title ""
execute as @a[tag=rentreN] at @s unless block ~ 255 ~ light[level=3] run tag @s remove rentreN
execute as @a[tag=rentreB] at @s unless block ~ 255 ~ light[level=4] run title @s subtitle "Tu quittes le claim de Le_Buildist"
execute as @a[tag=rentreB] at @s unless block ~ 255 ~ light[level=4] run title @s title ""
execute as @a[tag=rentreB] at @s unless block ~ 255 ~ light[level=4] run tag @s remove rentreB
execute as @a[tag=rentreC] at @s unless block ~ 255 ~ light[level=5] run title @s subtitle "Tu quittes le claim de Chica"
execute as @a[tag=rentreC] at @s unless block ~ 255 ~ light[level=5] run title @s title ""
execute as @a[tag=rentreC] at @s unless block ~ 255 ~ light[level=5] run tag @s remove rentreC
execute as @a[tag=rentreG] at @s unless block ~ 255 ~ light[level=6] run title @s subtitle "Tu quittes le claim de GrandSaule"
execute as @a[tag=rentreG] at @s unless block ~ 255 ~ light[level=6] run title @s title ""
execute as @a[tag=rentreG] at @s unless block ~ 255 ~ light[level=6] run tag @s remove rentreG
execute as @a[tag=rentreNML] at @s unless block ~ 255 ~ light[level=15] run title @s subtitle "Tu quittes le No Man's Land"
execute as @a[tag=rentreNML] at @s unless block ~ 255 ~ light[level=15] run title @s title ""
execute as @a[tag=rentreNML] at @s unless block ~ 255 ~ light[level=15] run tag @s remove rentreNML
execute as @a[tag=!rentreP] at @s if block ~ 255 ~ light[level=1] run title @s subtitle "Tu rentres dans la zone protégée du spawn"
execute as @a[tag=!rentreP] at @s if block ~ 255 ~ light[level=1] run title @s title ""
execute as @a[tag=!rentreP] at @s if block ~ 255 ~ light[level=1] run tag @s add rentreP
execute as @a[tag=!rentreS] at @s if block ~ 255 ~ light[level=2] run title @s subtitle "Tu rentres dans le claim de Survivor"
execute as @a[tag=!rentreS] at @s if block ~ 255 ~ light[level=2] run title @s title ""
execute as @a[tag=!rentreS] at @s if block ~ 255 ~ light[level=2] run tag @s add rentreS
execute as @a[tag=!rentreN] at @s if block ~ 255 ~ light[level=3] run title @s subtitle "Tu rentres dans le claim de Nathfirex"
execute as @a[tag=!rentreN] at @s if block ~ 255 ~ light[level=3] run title @s title ""
execute as @a[tag=!rentreN] at @s if block ~ 255 ~ light[level=3] run tag @s add rentreN
execute as @a[tag=!rentreB] at @s if block ~ 255 ~ light[level=4] run title @s subtitle "Tu rentres dans le claim de Le_Buildist"
execute as @a[tag=!rentreB] at @s if block ~ 255 ~ light[level=4] run title @s title ""
execute as @a[tag=!rentreB] at @s if block ~ 255 ~ light[level=4] run tag @s add rentreB
execute as @a[tag=!rentreC] at @s if block ~ 255 ~ light[level=5] run title @s subtitle "Tu rentres dans le claim de Chica"
execute as @a[tag=!rentreC] at @s if block ~ 255 ~ light[level=5] run title @s title ""
execute as @a[tag=!rentreC] at @s if block ~ 255 ~ light[level=5] run tag @s add rentreC
execute as @a[tag=!rentreG] at @s if block ~ 255 ~ light[level=6] run title @s subtitle "Tu rentres dans le claim de GrandSaule"
execute as @a[tag=!rentreG] at @s if block ~ 255 ~ light[level=6] run title @s title ""
execute as @a[tag=!rentreG] at @s if block ~ 255 ~ light[level=6] run tag @s add rentreG
execute as @a[tag=!rentreNML] at @s if block ~ 255 ~ light[level=15] run title @s subtitle "Tu rentres dans un No Man's Land"
execute as @a[tag=!rentreNML] at @s if block ~ 255 ~ light[level=15] run title @s title ""
execute as @a[tag=!rentreNML] at @s if block ~ 255 ~ light[level=15] run tag @s add rentreNML