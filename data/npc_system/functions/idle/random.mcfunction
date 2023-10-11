execute unless data storage npc_system:common temp.min run data modify storage npc_system:common temp.min set value 1
function general:utils/get_uniform with storage npc_system:common temp
data modify storage npc_system:common temp set from storage general:utils output
