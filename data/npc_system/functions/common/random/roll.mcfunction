data modify storage npc_system:common This.Normal append from storage npc_system:common This.Normal[0]
data remove storage npc_system:common This.Normal[0]
scoreboard players remove $index npc.count 1
execute if score $index npc.count matches 1.. run function npc_system:common/random/roll
