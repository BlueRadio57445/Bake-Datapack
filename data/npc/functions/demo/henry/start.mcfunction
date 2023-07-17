advancement revoke @s only npc:demo/henry_start

tag @e[tag=npc.demo.henry] add npc.this
data modify storage npc_system:common This set from storage npc:demo henry
execute if score $demo.cool_stone quest.state matches 1 unless data storage npc_system:common This.Dialogue run function quest:demo/cool_stone/check_item
execute if score $demo.cool_stone quest.state matches 2 unless data storage npc_system:common This.Dialogue run data modify storage npc_system:common This.Dialogue set from storage quest:demo cool_stone.Got
execute if score $demo.cool_stone quest.state matches 3 unless data storage npc_system:common This.Dialogue run data modify storage npc_system:common This.Dialogue set from storage quest:demo cool_stone.End

function npc_system:common/start
data modify storage npc:demo henry.Normal set from storage npc_system:common This.Normal
tag @e[tag=npc.this] remove npc.this 
