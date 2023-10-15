# 執行者、執行位置是龍捲風marker
function knowledge:air_tornado/tornado_particle

execute as @e[type=#mobs,type=!player,distance=4..8] facing entity @s feet rotated ~180 0 positioned as @s run tp @s ^ ^ ^0.1
execute as @e[type=#mobs,type=!player,distance=..4] positioned as @s run tp @s ~ ~0.1 ~

execute positioned ~-0.5 ~ ~-0.5 as @e[type=#mobs,type=!player,dx=0,dy=5,dz=0] run damage @s 1 player_attack

scoreboard players remove @s knowledge.object_duration 1
kill @s[scores={knowledge.object_duration=0}]