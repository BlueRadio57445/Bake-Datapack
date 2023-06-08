# 執行者、執行位置是小泡泡
particle bubble ~ ~ ~ 0.18 0.18 0.18 0.01 10
execute as @a[distance=..50] run function knowledge:water_bubble/circle_particle1
execute positioned ~-0.4 ~-0.4 ~-0.4 as @e[type=#mobs,dx=0,dy=0,dz=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0,dy=0,dz=0] run function knowledge:water_bubble/bubble_effect
execute positioned ~-0.4 ~-0.4 ~-0.4 as @e[type=#mobs,dx=0,dy=0,dz=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0,dy=0,dz=0] run kill @e[tag=water_bubble,type=marker,sort=nearest,limit=1]
execute unless block ~ ~ ~ air run kill @s
tp @s ^ ^ ^0.1