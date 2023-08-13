scoreboard players set @s npc.option 1
scoreboard players set $condition npc.state 1
execute if data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Options[0].Condition run function npc_system:common/option/condition/check_a
execute if score $condition npc.state matches 1 as @e[limit=1,type=minecraft:marker,tag=npc.this] run function npc_system:common/option/select_a1
execute if score $condition npc.state matches 1 run function npc_system:common/selected
