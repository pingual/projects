execute as @s[scores={Niveau=5}] run give @s iron_boots
execute as @s[scores={Niveau=5}] run tellraw @s "Tu viens de gagner des bottes en fer!"
execute as @s[scores={Niveau=10}] run give @s iron_helmet
execute as @s[scores={Niveau=10}] run tellraw @s "Tu viens de gagner un casque en fer!"
execute as @s[scores={Niveau=10}] run scoreboard players enable @s classes
execute as @s[scores={Niveau=10}] run tellraw @s ["",{"text":"Choisis ta classe en éxecutant la commande "},{"text":"/trigger classes","clickEvent":{"action":"run_command","value":"/trigger classes"},"hoverEvent":{"action":"show_text","contents":"/trigger classes"}}]
execute as @s[scores={Niveau=15}] run give @s iron_leggings
execute as @s[scores={Niveau=15}] run tellraw @s "Tu viens de gagner des jambières en fer!"
execute as @s[scores={Niveau=20}] run give @s iron_chestplate
execute as @s[scores={Niveau=20}] run tellraw @s "Tu viens de gagner un plastron en fer!"
execute as @s[scores={Niveau=25}] run give @s enchanting_table
execute as @s[scores={Niveau=25}] run tellraw @s "Tu viens de gagner un table d'enchantement!"
execute as @s[scores={Niveau=30}] run scoreboard players add @s Money 500
execute as @s[scores={Niveau=30}] run tellraw @s "Tu viens de gagner 500 frances!"
execute as @s[scores={Niveau=30}] run scoreboard players enable @s classes.spe
execute as @s[scores={Niveau=30}] run tellraw @s ["",{"text":"Choisis ta spécialisation en éxecutant la commande "},{"text":"/trigger classes.spe","clickEvent":{"action":"run_command","value":"/trigger classes.spe"},"hoverEvent":{"action":"show_text","contents":"/trigger classes.spe"}}]
execute as @s[scores={Niveau=35}] run give @s bookshelf 30
execute as @s[scores={Niveau=35}] run tellraw @s "Tu viens de gagner 30 bibliothèques!"
execute as @s[scores={Niveau=40}] run give @s turtle_helmet
execute as @s[scores={Niveau=40}] run tellraw @s "Tu viens de gagner un casque de tortue!"
execute as @s[scores={Niveau=45}] run give @s name_tag 10
execute as @s[scores={Niveau=45}] run tellraw @s "Tu viens de gagner 10 étiquettes!"
execute as @s[scores={Niveau=50}] run give @s elytra
execute as @s[scores={Niveau=50}] run tellraw @s "Tu viens de gagner des élytres!"
execute as @s[scores={Niveau=55}] run give @s ender_pearl 16
execute as @s[scores={Niveau=55}] run tellraw @s "Tu viens de gagner 16 perles de l'ender!"
execute as @s[scores={Niveau=60}] run give @s nether_star
execute as @s[scores={Niveau=60}] run tellraw @s "Tu viens de gagner une étoile du nether!"
execute as @s[scores={Niveau=65}] run give @s diamond_boots
execute as @s[scores={Niveau=65}] run tellraw @s "Tu viens de gagner des bottes en diamant!"
execute as @s[scores={Niveau=70}] run give @s diamond_helmet
execute as @s[scores={Niveau=70}] run tellraw @s "Tu viens de gagner un casque en diamant!"
execute as @s[scores={Niveau=75}] run give @s diamond_leggings
execute as @s[scores={Niveau=75}] run tellraw @s "Tu viens de gagner des jambières en diamant!"
execute as @s[scores={Niveau=80}] run give @s diamond_chestplate
execute as @s[scores={Niveau=80}] run tellraw @s "Tu viens de gagner un plastron en diamant!"
execute as @s[scores={Niveau=85}] run give @s netherite_ingot
execute as @s[scores={Niveau=85}] run tellraw @s "Tu viens de gagner un lingot en netherite!"
execute as @s[scores={Niveau=90}] run give @s netherite_ingot
execute as @s[scores={Niveau=90}] run tellraw @s "Tu viens de gagner un lingot en netherite!"
execute as @s[scores={Niveau=95}] run give @s netherite_ingot
execute as @s[scores={Niveau=95}] run tellraw @s "Tu viens de gagner un lingot en netherite!"