$data modify storage general:extra_lore Item.components."minecraft:lore" append value '{"italic":false,"color":"dark_gray","translate":"item.durability","with":[$(current),$(max)]}'
data modify storage general:extra_lore Item.components."minecraft:custom_data".durability_update set value {}
