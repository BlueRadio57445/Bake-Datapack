advancement revoke @s only npc:hunger_cave/henry_start

tag @e[tag=npc.hunger_cave.henry] add npc.this
data modify storage npc_system:common This set from storage npc:hunger_cave henry
execute if score $hunger_cave.cool_stone quest.state matches 1 unless data storage npc_system:common This.Dialogue run function quest:hunger_cave/cool_stone/check_item
execute if score $hunger_cave.cool_stone quest.state matches 2 unless data storage npc_system:common This.Dialogue run data modify storage npc_system:common This.Dialogue set from storage quest:hunger_cave cool_stone.Got
execute if score $hunger_cave.cool_stone quest.state matches 3 unless data storage npc_system:common This.Dialogue run data modify storage npc_system:common This.Dialogue set from storage quest:hunger_cave cool_stone.End

function npc_system:common/start
data modify storage npc:hunger_cave henry.Normal set from storage npc_system:common This.Normal
tag @e[tag=npc.this] remove npc.this 
