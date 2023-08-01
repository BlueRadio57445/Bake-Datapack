scoreboard players set @s npc.option 2
scoreboard players set $condition npc.state 1
execute if data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Options[1].Condition run function npc_system:common/option/condition/check_b
execute if score $condition npc.state matches 1 as @e[limit=1,type=minecraft:marker,tag=npc.this] run function npc_system:common/option/select_b1
execute if score $condition npc.state matches 1 run function npc_system:common/selected
