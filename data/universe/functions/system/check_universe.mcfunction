# 進度觸發，執行者是玩家
# 丟帶子也會觸發
advancement revoke @s only universe:check_universe_bundle
scoreboard players reset @s universe.drop_bundle

data modify storage universe:bundle Items set value []
data modify storage universe:bundle Items append from entity @s Inventory[{tag:{universe_bundle:1b}}].tag.Items[{tag:{is_universe:1b}}]
function universe:system/reset_tag
scoreboard players operation $temp universe = $level universe.level
execute if score $temp universe matches 1.. run function universe:system/iteration
function universe:system/disable_universe