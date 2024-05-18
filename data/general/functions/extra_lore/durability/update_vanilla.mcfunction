execute if data storage general:extra_lore Item.components."minecraft:unbreakable" run return 0
data modify storage general:extra_lore Item.durability.max set from storage general:extra_lore Item.components."minecraft:custom_data".vanilla_max_damage
execute store result score $durability.current general.extra_lore run data get storage general:extra_lore Item.durability.max
execute store result score $durability.damage general.extra_lore run data get storage general:extra_lore Item.components."minecraft:damage"
scoreboard players operation $durability.current general.extra_lore -= $durability.damage general.extra_lore
execute store result storage general:extra_lore Item.durability.current int 1 run scoreboard players get $durability.current general.extra_lore
function general:extra_lore/durability/append with storage general:extra_lore Item.durability
