execute if data storage general:extra_lore Item.components."minecraft:unbreakable" run return 0
data modify storage general:extra_lore Item.components."minecraft:custom_data".durability_update set value {}
data modify storage general:extra_lore Item.components."minecraft:custom_data".damage set value {max:0,current:0}
data modify storage general:extra_lore Item.components."minecraft:custom_data".damage.max set from storage general:extra_lore Item.components."minecraft:max_damage"
data modify storage general:extra_lore Item.components."minecraft:custom_data".damage.current set from storage general:extra_lore Item.components."minecraft:damage"
data modify storage general:extra_lore durability set value {max:0,current:0}
data modify storage general:extra_lore durability.max set from storage general:extra_lore Item.components."minecraft:max_damage"
execute store result score $durability.current general.extra_lore run data get storage general:extra_lore durability.max
execute store result score $durability.damage general.extra_lore run data get storage general:extra_lore Item.components."minecraft:damage"
scoreboard players operation $durability.current general.extra_lore -= $durability.damage general.extra_lore
execute store result storage general:extra_lore durability.current int 1 run scoreboard players get $durability.current general.extra_lore
function general:extra_lore/durability/append with storage general:extra_lore durability
