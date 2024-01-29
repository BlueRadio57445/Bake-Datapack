# 執行者、執行位置是毒泡泡
particle glow_squid_ink ~ ~ ~ 0.18 0.18 0.18 0.01 0
execute as @a[distance=..50] run function boss:poison_starver/poison_bubble/particle
execute positioned ~-0.4 ~-0.4 ~-0.4 as @a[dx=0,dy=0,dz=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0,dy=0,dz=0] run function boss:poison_starver/poison_bubble/bubble_effect
execute positioned ~-0.4 ~-0.4 ~-0.4 as @a[dx=0,dy=0,dz=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0,dy=0,dz=0] run kill @e[tag=poison_starver.poison_bubble,type=marker,sort=nearest,limit=1]
execute if data entity @s attack run kill @s
tp @s ^ ^ ^0.15