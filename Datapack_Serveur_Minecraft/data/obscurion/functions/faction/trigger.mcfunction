execute as @a[scores={fac.join=1..},tag=!fac2] run function obscurion:faction/join
execute as @a[scores={fac.leave=1..}] run function obscurion:faction/leave
execute as @a[scores={fac.eject=1..}] run function obscurion:faction/eject
execute as @a[scores={fac.claim=1..},nbt={Dimension:"minecraft:overworld"}] run function obscurion:faction/claim
execute as @a[scores={fac.unclaim=1..},nbt={Dimension:"minecraft:overworld"}] run function obscurion:faction/unclaim
execute as @a[scores={fac.claim=1..},nbt=!{Dimension:"minecraft:overworld"}] run function obscurion:faction/claimnether
execute as @a[scores={fac.unclaim=1..},nbt=!{Dimension:"minecraft:overworld"}] run function obscurion:faction/unclaimnether
execute as @a[scores={fac.promote=1..}] run function obscurion:faction/promote
execute as @a[scores={fac.reduce=1..}] run function obscurion:faction/reduce
execute as @a[scores={fac.info=1..}] run function obscurion:faction/info
execute as @a[scores={fac.ally=1..}] run function obscurion:faction/ally
execute as @a[scores={fac.ally_break=1..}] run function obscurion:faction/ally_break
execute as @a[scores={fac.bank_deposit=1..}] run function obscurion:faction/bank_deposit
execute as @a[scores={fac.bank_retire=1..}] run function obscurion:faction/bank_retire
execute as @a[scores={fac.bank_info=1..}] run function obscurion:faction/bank_info
execute as @a[scores={fac.bank_log=1..}] run function obscurion:faction/bank_log
execute as @a[scores={war.start=1..}] run function obscurion:war/war_start
execute as @a[scores={fac.help=1..}] run function obscurion:faction/help
execute as @a[tag=!connecte] run function obscurion:first_co