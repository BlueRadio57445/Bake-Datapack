execute store result score $slot general.extra_lore run data get storage general:extra_lore Item.Slot
data remove storage general:extra_lore Item.components."minecraft:lore"[-1]
execute unless data storage general:extra_lore Item.components."minecraft:max_damage" run data modify storage general:extra_lore Item.components."minecraft:max_damage" set from storage general:extra_lore Item.components."minecraft:custom_data".damage.max
function general:extra_lore/durability/update
function general:extra_lore/replace
