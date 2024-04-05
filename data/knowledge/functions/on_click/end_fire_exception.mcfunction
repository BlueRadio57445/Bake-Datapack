execute if data storage knowledge:on_click current_knowledge{id:"fire_ball"} run data modify storage knowledge:on_click current_knowledge.variant_id set value "end_fire_ball"
execute if data storage knowledge:on_click current_knowledge{id:"fire_fan"} run data modify storage knowledge:on_click current_knowledge.variant_id set value "end_fire_fan"
execute if data storage knowledge:on_click current_knowledge{id:"fire_field"} run data modify storage knowledge:on_click current_knowledge.variant_id set value "end_fire_field"

# 檢查 -> 施放 -> 冷卻
function knowledge:on_click/end_fire_check with storage knowledge:on_click current_knowledge