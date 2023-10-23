$data modify storage items:whetstone Lore.front set string storage items:whetstone Weapon.tag.display.Lore[$(lore_index)] 0 -12
$data modify storage items:whetstone Lore.back set string storage items:whetstone Weapon.tag.display.Lore[$(lore_index)] -11
data modify storage items:whetstone Lore.time set from storage items:whetstone Weapon.tag.sharpened.times_left
data modify storage items:whetstone Lore.index set from storage items:whetstone Weapon.tag.sharpened.lore_index
function items:gadget/whetstone/lore_cat with storage items:whetstone Lore
