#declare score_holder $slot

data modify storage general:extra_lore Item set from storage general:extra_lore Items[-1]
execute store result score $slot general.extra_lore run data get storage general:extra_lore Item.Slot
function general:extra_lore/durability/change
function general:extra_lore/replace
