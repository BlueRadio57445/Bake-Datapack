$execute if score $times items.whetstone matches 9..98 run data modify storage items:whetstone lore.front set string storage items:whetstone weapon.components.minecraft:lore[$(lore_index)] 0 -11
$execute if score $times items.whetstone matches 1..8 run data modify storage items:whetstone lore.front set string storage items:whetstone weapon.components.minecraft:lore[$(lore_index)] 0 -10
$data modify storage items:whetstone lore.back set string storage items:whetstone weapon.components.minecraft:lore[$(lore_index)] -9
data modify storage items:whetstone lore.time set from storage items:whetstone weapon.components.minecraft:custom_data.sharpened.times_left
data modify storage items:whetstone lore.index set from storage items:whetstone weapon.components.minecraft:custom_data.sharpened.lore_index
function items:gadget/whetstone/lore_cat with storage items:whetstone lore
