# 進度觸發，執行者是玩家
advancement revoke @s only universe:check_universe_bundle

data modify storage universe:bundle Items set value []
data modify storage universe:bundle Items append from entity @s Inventory[{tag:{universe_bundle:1b}}].tag.Items[{tag:{is_universe:1b}}]
function universe:system/reset_tag
scoreboard players operation $temp universe = $level universe.level
execute if score $temp universe matches 1.. run function universe:system/add_tag
function universe:system/enable_universe
function universe:system/disable_universe