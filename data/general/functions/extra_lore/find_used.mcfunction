data modify storage general:extra_lore Item set from storage general:extra_lore Items[-1]
execute store result score $slot general.extra_lore run data get storage general:extra_lore Item.Slot
data remove storage general:extra_lore Item.components."minecraft:lore"[-1]
execute if data storage general:extra_lore Item.components."minecraft:max_damage" run function general:extra_lore/durability/update
execute unless data storage general:extra_lore Item.components."minecraft:max_damage" run function general:extra_lore/durability/update_vanilla
function general:extra_lore/replace
data remove storage general:extra_lore Items[-1]
execute if data storage general:extra_lore Items[] run function general:extra_lore/find_used
