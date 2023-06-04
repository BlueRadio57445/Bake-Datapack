particle minecraft:soul_fire_flame ~ ~ ~ 0.25 0.25 0.25 0.02 30
execute as @e[type=#mobs,dx=0,dy=0,dz=0] run damage @s 10
execute if entity @s[distance=..50] if block ~ ~ ~ air positioned ^ ^ ^0.7 run function knowledge:fire_cannon/shoot