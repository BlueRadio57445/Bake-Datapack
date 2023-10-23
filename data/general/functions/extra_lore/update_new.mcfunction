data modify storage general:extra_lore Item set from storage general:extra_lore Items[-1]
execute store result score $slot general.extra_lore run data get storage general:extra_lore Item.Slot
execute unless data storage general:extra_lore Item.tag.display.OriginalLore if data storage general:extra_lore Item.tag.display.Lore run data modify storage general:extra_lore Item.tag.display.OriginalLore set from storage general:extra_lore Item.tag.display.Lore
execute unless data storage general:extra_lore Item.tag.display.OriginalLore unless data storage general:extra_lore Item.tag.display.Lore run data modify storage general:extra_lore Item.tag.display.OriginalLore set value []
data modify storage general:extra_lore Item.tag.display.Lore set from storage general:extra_lore Item.tag.display.OriginalLore
execute if data storage general:extra_lore Item.tag.AttributeModifiers[] run function general:extra_lore/attributes
$execute if data storage general:extra_lore has_durability[{id:"$(id)"}] run function general:extra_lore/durability/new with storage general:extra_lore has_durability[{id:"$(id)"}]
execute store result score $hide_flags general.extra_lore run data get storage general:extra_lore Item.tag.HideFlags
scoreboard players operation $hide_attribute general.extra_lore = $hide_flags general.extra_lore
scoreboard players operation $hide_attribute general.extra_lore /= $2 general.const
scoreboard players operation $hide_attribute general.extra_lore %= $2 general.const
execute if score $hide_attribute general.extra_lore matches 0 run scoreboard players add $hide_flags general.extra_lore 2
execute store result storage general:extra_lore Item.tag.HideFlags int 1 run scoreboard players get $hide_flags general.extra_lore
data remove storage general:extra_lore Item.tag.LoreUpdate
function general:extra_lore/replace
data remove storage general:extra_lore Items[-1]
execute if data storage general:extra_lore Items[] run function general:extra_lore/update_new with storage general:extra_lore Items[-1]
