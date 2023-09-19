data modify storage general:extra_lore Item set from storage general:extra_lore Items[-1]
execute unless data storage general:extra_lore Item.tag.display.OriginalLore run data modify storage general:extra_lore Item.tag.display.OriginalLore set from storage general:extra_lore Item.tag.display.Lore
data modify storage general:extra_lore Item.tag.display.Lore set from storage general:extra_lore Item.tag.display.OriginalLore
execute if data storage general:extra_lore Item.tag.AttributeModifiers[] run function general:extra_lore/attributes
$execute if data storage general:extra_lore has_durability[{id:"$(id)"}] run function general:extra_lore/durability with storage general:extra_lore has_durability[{id:"$(id)"}]
data remove storage general:extra_lore Item.tag.LoreUpdate
data modify storage general:extra_lore Item.Slot set value 0b
data modify block 0 16 0 Items append from storage general:extra_lore Item
$item replace entity @s container.$(Slot) from block 0 16 0 container.0
data remove block 0 16 0 Items[]
data remove storage general:extra_lore Items[-1]
execute if data storage general:extra_lore Items[] run function general:extra_lore/update with storage general:extra_lore Items[-1]
