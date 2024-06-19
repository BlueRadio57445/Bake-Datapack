data modify storage general:extra_lore Item set from storage general:extra_lore Items[-1]
execute store result score $durability.damage general.extra_lore run data get storage general:extra_lore Item.components."minecraft:damage"
execute store result score $durability.prev_damage general.extra_lore run data get storage general:extra_lore Item.components."minecraft:custom_data".damage.current
execute unless score $durability.damage general.extra_lore = $durability.prev_damage general.extra_lore run function general:extra_lore/durability/used
data remove storage general:extra_lore Items[-1]
execute if data storage general:extra_lore Items[] run function general:extra_lore/find_used
