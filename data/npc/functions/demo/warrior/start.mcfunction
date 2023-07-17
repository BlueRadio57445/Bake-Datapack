advancement revoke @s only npc:demo/warrior_start

tag @e[tag=npc.demo.warrior] add npc.this
data modify storage npc_system:common This set from storage npc:demo warrior
execute if score $demo.dying_warrior quest.state matches 1 unless data storage npc_system:common This.Dialogue run function quest:demo/dying_warrior/check_item

function npc_system:common/start
data modify storage npc:demo warrior.Normal set from storage npc_system:common This.Normal
tag @e[tag=npc.this] remove npc.this 
