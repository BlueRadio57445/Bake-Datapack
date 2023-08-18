# 執行者是玩家
data modify storage universe:bundle Items set value []
data modify storage universe:bundle Items set from entity @s Inventory[{tag:{universe_bundle:1b}}].tag.Items

function universe:system/reset_tag
scoreboard players operation $temp universe = $level universe.level
execute if score $temp universe matches 1.. run function universe:system/add_tag
execute if score $temp universe matches 1.. run function universe:system/add_tag
execute if score $temp universe matches 1.. run function universe:system/add_tag
execute if score $temp universe matches 1.. run function universe:system/add_tag
execute if score $temp universe matches 1.. run function universe:system/add_tag
execute if score $temp universe matches 1.. run function universe:system/add_tag

function universe:system/enable_universe
function universe:system/disable_universe