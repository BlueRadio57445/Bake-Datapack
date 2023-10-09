data modify storage items:whetstone Lore set value {}
data modify storage items:whetstone Lore.text set from storage items:whetstone Weapon.tag.display.Lore[-1]
scoreboard players set $temp items.whetstone 0
function items:gadget/whetstone/lore_check with storage items:whetstone Lore
execute if score $temp items.whetstone matches 0 run data modify storage items:whetstone Temp prepend from storage items:whetstone Weapon.tag.display.Lore[-1]
execute if score $temp items.whetstone matches 1 run scoreboard players remove $target items.whetstone 1
data remove storage items:whetstone Weapon.tag.display.Lore[-1]
execute if score $target items.whetstone matches 1.. if data storage items:whetstone Weapon.tag.display.Lore[] run function items:gadget/whetstone/lore_remove
