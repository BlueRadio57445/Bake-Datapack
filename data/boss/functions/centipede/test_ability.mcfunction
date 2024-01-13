execute as 00000000-0000-0000-0000-000000000b00 if entity @s[tag=!centipede.barrage] run scoreboard players add $bullet centipede.cd 1
scoreboard players add $barrage centipede.cd 1
execute as 00000000-0000-0000-0000-000000000b00 if entity @s[tag=!centipede.barrage] if score $barrage centipede.cd matches 1000.. run function boss:centipede/summon_barrage
execute as @e[tag=centipede.can_be_attack] at @s if score $bullet centipede.cd matches 60 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1
execute as @e[tag=centipede.can_be_attack] at @s if score $bullet centipede.cd matches 80 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1
execute as @e[tag=centipede.can_be_attack] at @s if score $bullet centipede.cd matches 100.. run function boss:centipede/shoot
schedule function boss:centipede/test_ability 1t