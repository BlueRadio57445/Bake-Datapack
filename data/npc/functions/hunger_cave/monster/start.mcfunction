advancement revoke @s only npc:hunger_cave/monster_start

tag @e[tag=npc.hunger_cave.monster] add npc.this
data modify storage npc_system:common This set from storage npc:hunger_cave monster

# 若有符合特殊對話之條件(例如任務說明與交付等)，將於此處偵測並覆蓋接下來的對話，順序越前面優先度越高，若無則請無視此段
#execute if score $<region>.<quest_id> quest.state matches <a_number> unless data storage npc_system:common This.Dialogue run data modify storage npc_system:common This.Dialogue set from storage quest:dialogue <quest_id>.<dialogue_name>
execute if score $hunger_cave.monster quest.state matches 1 unless data storage npc_system:common This.Dialogue run data modify storage npc_system:common This.Dialogue set from storage quest:hunger_cave monster.Start_Remind
execute if score $hunger_cave.monster quest.state matches 2 unless data storage npc_system:common This.Dialogue run data modify storage npc_system:common This.Dialogue set from storage quest:hunger_cave monster.Got_Rope
#...

function npc_system:common/start
data modify storage npc:hunger_cave monster.Normal set from storage npc_system:common This.Normal
tag @e[tag=npc.this] remove npc.this
