data modify storage npc_system:common This.Dialogue set from storage npc_system:common This.Greeting[0]
data modify storage npc_system:common This.Dialogue.TraderNormal set from storage npc_system:common This.Normal
# random maybe?
execute unless data storage npc_system:common This.Greeting[0].Once run data modify storage npc_system:common This.Greeting append from storage npc_system:common This.Greeting[0]
data remove storage npc_system:common This.Greeting[0]
