# 執行者、執行位置是施放的玩家(或怪物)
scoreboard players remove @s knowledge.fire_field 1
execute as 00000000-0000-0000-0000-000000000100 at @s run tp @s ~ ~ ~ ~8 ~
execute rotated as 00000000-0000-0000-0000-000000000100 run particle flame ^ ^ ^1 ^ ^20000 ^100000 0.000001 0
execute rotated as 00000000-0000-0000-0000-000000000100 rotated ~60 ~ run particle flame ^ ^ ^1 ^ ^20000 ^100000 0.000001 0
execute rotated as 00000000-0000-0000-0000-000000000100 rotated ~120 ~ run particle flame ^ ^ ^1 ^ ^20000 ^100000 0.000001 0
execute rotated as 00000000-0000-0000-0000-000000000100 rotated ~180 ~ run particle flame ^ ^ ^1 ^ ^20000 ^100000 0.000001 0
execute rotated as 00000000-0000-0000-0000-000000000100 rotated ~240 ~ run particle flame ^ ^ ^1 ^ ^20000 ^100000 0.000001 0
execute rotated as 00000000-0000-0000-0000-000000000100 rotated ~300 ~ run particle flame ^ ^ ^1 ^ ^20000 ^100000 0.000001 0
function knowledge:fire_field/particle
execute if entity @s[type=player] as @e[distance=0.1..3,type=#mobs,type=!player] run data modify entity @s Fire set value 100
execute if entity @s[type=!player] as @e[distance=0.1..3,type=#mobs,type=player] run data modify entity @s Fire set value 100