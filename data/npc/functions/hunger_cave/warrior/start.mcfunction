advancement revoke @s only npc:hunger_cave/warrior_start

tag @e[tag=npc.hunger_cave.warrior] add npc.this
data modify storage npc_system:common This set from storage npc:hunger_cave warrior
execute if score $hunger_cave.dying_warrior quest.state matches 1 unless data storage npc_system:common This.Dialogue run function quest:hunger_cave/dying_warrior/check_item

function npc_system:common/start
data modify storage npc:hunger_cave warrior.Normal set from storage npc_system:common This.Normal
tag @e[tag=npc.this] remove npc.this 
