# 執行者、執行位置是施放的玩家
scoreboard players remove @s knowledge.fire_field 1
execute as @e[type=marker,tag=fire_field] at @s run tp @s ~ ~ ~ ~8 ~
execute rotated as @e[type=marker,tag=fire_field] run particle flame ^ ^ ^1 ^ ^20000 ^100000 0.000001 0
execute rotated as @e[type=marker,tag=fire_field] rotated ~60 ~ run particle flame ^ ^ ^1 ^ ^20000 ^100000 0.000001 0
execute rotated as @e[type=marker,tag=fire_field] rotated ~120 ~ run particle flame ^ ^ ^1 ^ ^20000 ^100000 0.000001 0
execute rotated as @e[type=marker,tag=fire_field] rotated ~180 ~ run particle flame ^ ^ ^1 ^ ^20000 ^100000 0.000001 0
execute rotated as @e[type=marker,tag=fire_field] rotated ~240 ~ run particle flame ^ ^ ^1 ^ ^20000 ^100000 0.000001 0
execute rotated as @e[type=marker,tag=fire_field] rotated ~300 ~ run particle flame ^ ^ ^1 ^ ^20000 ^100000 0.000001 0
function knowledge:fire_field/particle