# 執行者、執行位置是羽毛(物品展示)
scoreboard players remove @s knowledge.object_duration 1
kill @s[scores={knowledge.object_duration=0}]

tp @s[tag=on_flying] ^ ^ ^0.5
execute unless block ^ ^ ^1 air run tag @s remove on_flying

execute if entity @s[tag=on_flying] positioned ~-0.1 ~-0.1 ~-0.1 as @e[type=#mobs,type=!player,dx=0] positioned ~-0.8 ~-0.8 ~-0.8 run damage @s[dx=0] 5 minecraft:player_attack

execute if entity @s[tag=!on_flying] run particle explosion ~ ~ ~ 1751 0 6137 0.001 0
