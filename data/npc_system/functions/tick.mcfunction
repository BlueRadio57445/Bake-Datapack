execute as @e[tag=npc.figure,scores={npc.user=0..}] at @s run function npc_system:common/figure
execute as @e[tag=npc.figure,scores={npc.reset=1..}] at @s run function npc_system:common/reset
scoreboard players operation $current npc.split = $gametime general.utils
scoreboard players operation $current npc.split %= $20 general.const
execute as @e[type=minecraft:marker,tag=npc.idle,predicate=npc_system:idle/split_match] run function npc_system:idle/check
# 此行可註解掉
scoreboard players operation $system npc.timer = $gametime general.utils
