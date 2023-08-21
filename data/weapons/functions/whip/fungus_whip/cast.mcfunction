# 執行者是浮標

tag @s add whip.fungus_whip

execute at @s[scores={weapons.whip.time=2}] run particle item warped_nylium ~ ~ ~ 0.1 0.1 0.1 0.1 20
execute at @s[scores={weapons.whip.time=2}] positioned ~-0.3 ~-0.3 ~-0.3 as @e[type=#mobs,dx=0,dy=0,dz=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,dy=0,dz=0] run tag @s add this
effect give @e[tag=this,type=#mobs] poison 6 1
execute as @e[tag=this,type=#mobs] run damage @s 4 player_attack by @p[tag=origin]
tag @e[tag=this] remove this

tag @s[scores={weapons.whip.time=2}] add whip.kill