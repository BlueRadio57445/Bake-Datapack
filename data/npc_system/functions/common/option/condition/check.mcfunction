# executed by marker
data modify storage npc_system:common Condition set value {}
$data modify storage npc_system:common Condition set from entity @s data.Dialogue.Options[$(index)].Condition

execute if data storage npc_system:common Condition{Type:"item"} unless data storage npc_system:common Condition.Value.tag run function npc_system:common/option/condition/item with storage npc_system:common Condition.Value
execute if data storage npc_system:common Condition{Type:"item"} if data storage npc_system:common Condition.Value.tag run function npc_system:common/option/condition/item_nbt with storage npc_system:common Condition.Value
execute if data storage npc_system:common Condition{Type:"score"} run function npc_system:common/option/condition/score with storage npc_system:common Condition.Value
execute if data storage npc_system:common Condition{Type:"command"} run function npc_system:common/option/condition/command with storage npc_system:common Condition
