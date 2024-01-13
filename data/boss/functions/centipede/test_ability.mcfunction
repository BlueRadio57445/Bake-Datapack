scoreboard players add $bullet centipede.cd 1
execute as @e[tag=centipede.can_be_attack] at @s if score $bullet centipede.cd matches 60 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1
execute as @e[tag=centipede.can_be_attack] at @s if score $bullet centipede.cd matches 80 run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1 1
execute as @e[tag=centipede.can_be_attack] at @s if score $bullet centipede.cd matches 100.. run function boss:centipede/shoot
schedule function boss:centipede/test_ability 1t