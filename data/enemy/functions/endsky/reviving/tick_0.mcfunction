execute at @e[type=minecraft:marker,scores={enemy.reviving.timer=81..100,enemy.reviving.type=0}] run particle minecraft:smoke ~ ~0.3 ~ 0.150 0.150 0.150 0.01 5 normal
execute as @e[type=minecraft:marker,scores={enemy.reviving.timer=80,enemy.reviving.type=0}] on vehicle run data modify entity @s height set value 0.95f
execute at @e[type=minecraft:marker,scores={enemy.reviving.timer=61..80,enemy.reviving.type=0}] run particle minecraft:smoke ~ ~0.475 ~ 0.150 0.2375 0.150 0.01 10 normal
execute as @e[type=minecraft:marker,scores={enemy.reviving.timer=60,enemy.reviving.type=0}] on vehicle run data modify entity @s height set value 1.30f
execute at @e[type=minecraft:marker,scores={enemy.reviving.timer=41..60,enemy.reviving.type=0}] run particle minecraft:smoke ~ ~0.65 ~ 0.150 0.325 0.150 0.01 15 normal
execute as @e[type=minecraft:marker,scores={enemy.reviving.timer=40,enemy.reviving.type=0}] on vehicle run data modify entity @s height set value 1.65f
execute at @e[type=minecraft:marker,scores={enemy.reviving.timer=21..40,enemy.reviving.type=0}] run particle minecraft:smoke ~ ~0.825 ~ 0.150 0.4125 0.150 0.01 20 normal
execute as @e[type=minecraft:marker,scores={enemy.reviving.timer=20,enemy.reviving.type=0}] on vehicle run data modify entity @s height set value 2.00f
execute at @e[type=minecraft:marker,scores={enemy.reviving.timer=1..20,enemy.reviving.type=0}] run particle minecraft:smoke ~ ~1.0 ~ 0.150 0.5 0.150 0.01 25 normal
