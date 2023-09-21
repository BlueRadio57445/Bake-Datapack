data modify storage general:extra_lore Item set from storage general:extra_lore Items[-1]
execute store result score $slot general.extra_lore run data get storage general:extra_lore Item.Slot
execute unless data storage general:extra_lore Item.tag.display.OriginalLore run data modify storage general:extra_lore Item.tag.display.OriginalLore set from storage general:extra_lore Item.tag.display.Lore
data modify storage general:extra_lore Item.tag.display.Lore set from storage general:extra_lore Item.tag.display.OriginalLore
execute if data storage general:extra_lore Item.tag.AttributeModifiers[] run function general:extra_lore/attributes
$execute if data storage general:extra_lore has_durability[{id:"$(id)"}] run function general:extra_lore/durability/new with storage general:extra_lore has_durability[{id:"$(id)"}]
data remove storage general:extra_lore Item.tag.LoreUpdate
function general:extra_lore/replace
data remove storage general:extra_lore Items[-1]
execute if data storage general:extra_lore Items[] run function general:extra_lore/update_new with storage general:extra_lore Items[-1]
