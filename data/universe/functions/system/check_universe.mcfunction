# 執行者是玩家
data modify storage universe:bundle Items set value []
data modify storage universe:bundle Items set from entity @s Inventory[{tag:{universe_bundle:1b}}].tag.Items

function universe:system/reset_universe
scoreboard players operation $level universe = @s universe.level
execute if score $level universe matches 1.. run function universe:system/enable_universe
execute if score $level universe matches 1.. run function universe:system/enable_universe
execute if score $level universe matches 1.. run function universe:system/enable_universe
execute if score $level universe matches 1.. run function universe:system/enable_universe
execute if score $level universe matches 1.. run function universe:system/enable_universe
execute if score $level universe matches 1.. run function universe:system/enable_universe
