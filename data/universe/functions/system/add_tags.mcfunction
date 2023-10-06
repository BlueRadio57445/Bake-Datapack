function universe:system/add_one_tag with storage universe:bundle Items[0].tag.universe
function universe:system/enable_universe with storage universe:bundle Items[0].tag.universe

scoreboard players remove $temp universe 1
data remove storage universe:bundle Items[0]
execute if score $temp universe matches 1.. run function universe:system/add_tags

