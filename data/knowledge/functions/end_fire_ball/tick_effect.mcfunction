# 執行者、執行位置是火球
particle minecraft:soul_fire_flame ~ ~ ~ 0.01 0.01 0.01 0.01 5
#execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#mobs,dx=0,dy=0,dz=0] run data modify entity @s Fire set value 100
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#mobs,dx=0,dy=0,dz=0] run damage @s 6 minecraft:in_fire