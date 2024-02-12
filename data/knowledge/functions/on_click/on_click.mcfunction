execute if predicate general:utils/holding_sticks_mainhand run data modify storage knowledge:on_click current_knowledge set from entity @s SelectedItem.tag.knowledge
execute unless predicate general:utils/holding_sticks_mainhand if predicate general:utils/holding_sticks_offhand run data modify storage knowledge:on_click current_knowledge set from entity @s Inventory[{Slot:-106b}].tag.knowledge

# 末火大砲的例外處理
execute if score @s knowledge.end_fire matches 1.. run function knowledge:on_click/end_fire_exception

# 檢查 -> 施放 -> 冷卻
function knowledge:on_click/check with storage knowledge:on_click current_knowledge
