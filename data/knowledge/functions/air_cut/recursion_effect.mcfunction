particle crit ~ ~ ~ 0 0 0 0.01 0
execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[type=#mobs,type=!player,dx=0] positioned ~-0.8 ~-0.8 ~-0.8 run damage @s[dx=0] 5 minecraft:player_attack
execute unless entity @p[tag=this,distance=30..] unless entity @s[distance=..1] facing entity @s eyes positioned ^ ^ ^0.2 run function knowledge:air_cut/recursion_effect