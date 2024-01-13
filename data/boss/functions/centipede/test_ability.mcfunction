execute as 00000000-0000-0000-0000-000000000b00 if entity @s[tag=!centipede.barrage] run scoreboard players add $bullet centipede.cd 1
execute as 00000000-0000-0000-0000-000000000b00 if entity @s[tag=!centipede.barrage] if score $barrage centipede.cd matches 1000.. run function boss:centipede/summon_barrage
scoreboard players add $barrage centipede.cd 1
execute as @e[tag=centipede.can_be_attack] at @s if score $bullet centipede.cd matches 90 run particle angry_villager ~ ~ ~ 0.5 0.5 0.5 0.5 100 force
execute as @e[tag=centipede.can_be_attack] at @s if score $bullet centipede.cd matches 90 run playsound entity.tnt.primed ambient @a ~ ~ ~ 10 1 1
execute as @e[tag=centipede.can_be_attack] at @s if score $bullet centipede.cd matches 110 run playsound entity.blaze.shoot ambient @a ~ ~ ~ 10 1 1
execute as @e[tag=centipede.can_be_attack] at @s if score $bullet centipede.cd matches 110.. run function boss:centipede/shoot
schedule function boss:centipede/test_ability 1t