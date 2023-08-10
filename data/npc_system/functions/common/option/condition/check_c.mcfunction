data remove storage npc_system:common Condition
data modify storage npc_system:common Condition set from entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Options[2].Condition
function npc_system:common/option/condition/check
