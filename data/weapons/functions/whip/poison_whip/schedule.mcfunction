execute at @e[type=fishing_bobber,tag=whip.poison_whip] run particle item green_glazed_terracotta ~ ~ ~ 0.1 0.1 0.1 0.1 20
execute at @e[type=fishing_bobber,tag=whip.poison_whip] positioned ~-0.3 ~-0.3 ~-0.3 as @e[type=#mobs,dx=0,dy=0,dz=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,dy=0,dz=0] run tag @s add this
effect give @e[tag=this,type=#mobs] poison 2 0
tag @e[tag=this] remove this
execute if entity @e[type=fishing_bobber,tag=whip.poison_whip] run schedule function weapons:whip/poison_whip/schedule 2s