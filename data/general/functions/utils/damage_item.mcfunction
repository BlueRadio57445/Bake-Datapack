#declare score_holder $item_mode

$item replace block 0 16 0 container.0 from entity @s $(slot)
data modify storage general:extra_lore Item set value {}
data modify storage general:extra_lore Item set from block 0 16 0 Items[0]
data modify storage general:utils Item set value {}
data modify storage general:utils Item set from block 0 16 0 Items[0]
execute unless data storage general:utils Item.tag run data modify storage general:utils Item.tag set value {}
execute unless data storage general:extra_lore Item.id run return 0

scoreboard players set $item_mode general.utils 2
execute unless data storage general:extra_lore Item.tag.durability.ratio run function general:utils/_macro/damage_item with storage general:extra_lore Item
execute if score $item_mode general.utils matches 0 run return 0

execute store result score $durability.damage general.extra_lore run data get storage general:extra_lore Item.tag.Damage
execute if score $item_mode general.utils matches 2 store result score $durability.ratio general.extra_lore run data get storage general:extra_lore Item.tag.durability.ratio
$scoreboard players add $durability.damage general.extra_lore $(damage)

execute if score $item_mode general.utils matches 1 if score $durability.damage general.extra_lore < $durability.max general.extra_lore store result storage general:extra_lore Item.tag.Damage int 1 run scoreboard players get $durability.damage general.extra_lore
execute if score $item_mode general.utils matches 1 if score $durability.damage general.extra_lore >= $durability.max general.extra_lore run data modify storage general:extra_lore Item set value {}
execute if score $item_mode general.utils matches 2 run function general:extra_lore/durability/change
execute unless data storage general:extra_lore Item.id run function general:utils/broken_item with storage general:utils Item

data modify block 0 16 0 Items[0] set from storage general:extra_lore Item
$item replace entity @s $(slot) from block 0 16 0 container.0
data remove block 0 16 0 Items
