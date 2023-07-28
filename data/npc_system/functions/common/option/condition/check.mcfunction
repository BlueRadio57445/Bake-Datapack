#execute if data storage npc_system:common Condition.Item run function npc_system:common/option/condition/item

data modify storage general:utils Item set from storage npc_system:common Condition.Item
function general:utils/item_check
scoreboard players operation $condition npc.state = $output general.utils
