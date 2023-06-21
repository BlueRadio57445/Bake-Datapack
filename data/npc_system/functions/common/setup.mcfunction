data modify storage npc_system:common This.Dialogue set from storage npc_system:common This.Normal[0]
execute unless data storage npc_system:common This.Normal[0].Once run data modify storage npc_system:common This.Normal append from storage npc_system:common This.Normal[0]
data remove storage npc_system:common This.Normal[0]
