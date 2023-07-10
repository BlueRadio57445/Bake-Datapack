advancement revoke @s only npc:demo/radio_start

tag @e[tag=npc.demo.radio] add npc.this
data modify storage npc_system:common This set from storage npc:demo radio
execute if score $demo.mysterious_stone quest.state matches 1 unless data storage npc_system:common This.Dialogue run data modify storage npc_system:common This.Dialogue set from storage quest:demo mysterious_stone.Start
execute if score $demo.mysterious_stone quest.state matches 2 unless data storage npc_system:common This.Dialogue run data modify storage npc_system:common This.Dialogue set from storage quest:demo mysterious_stone.Start_Remind
execute if score $demo.mysterious_stone quest.state matches 3 unless data storage npc_system:common This.Dialogue run data modify storage npc_system:common This.Dialogue set from storage quest:demo mysterious_stone.Turn_In
execute if score $demo.mysterious_stone quest.state matches 4 unless data storage npc_system:common This.Dialogue run data modify storage npc_system:common This.Dialogue set from storage quest:demo mysterious_stone.Reward

function npc_system:common/start
data modify storage npc:demo radio.Normal set from storage npc_system:common This.Normal
tag @e[tag=npc.this] remove npc.this 
