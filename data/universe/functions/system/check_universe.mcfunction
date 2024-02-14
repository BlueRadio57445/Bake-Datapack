# 進度觸發，執行者是玩家
# 丟帶子也會觸發
advancement revoke @s only universe:check_universe_bundle
scoreboard players reset @s universe.drop_bundle

function general:player_data/select
data modify storage universe:bundle CurrentUniverse set value []
data modify storage universe:bundle PreviousUniverse set value []
data modify storage universe:bundle PreviousUniverse set from storage general:player_data Data[{selected:1b}].PreviousUniverse
data modify storage universe:bundle Items set value []
data modify storage universe:bundle Items append from entity @s Inventory[{tag:{universe_bundle:1b}}].tag.Items[{tag:{is_universe:1b}}]
scoreboard players operation $temp universe = $level universe.level
execute if score $temp universe matches 1.. run function universe:system/iteration
function universe:system/remove_iteration
data modify storage general:player_data Data[{selected:1b}].PreviousUniverse set from storage universe:bundle CurrentUniverse