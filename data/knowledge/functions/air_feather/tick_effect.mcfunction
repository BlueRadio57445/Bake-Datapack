# 執行者、執行位置是羽毛(物品展示)
scoreboard players remove @s knowledge.air_feather 1
kill @s[scores={knowledge.air_feather=0}]

tp @s[tag=on_flying] ^ ^ ^0.5
execute unless block ^ ^ ^1 air run tag @s remove on_flying

execute if entity @s[tag=!on_flying] run particle explosion ~ ~ ~ 1751 0 6137 0.001 0
