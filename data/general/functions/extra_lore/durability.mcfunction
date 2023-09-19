$data modify storage general:extra_lore attributes set value $(attributes)
$data modify storage general:extra_lore tag set value $(tag)
execute store result score $temp general.extra_lore run data get storage general:extra_lore attributes
execute if score $temp general.extra_lore matches 1.. unless data storage general:extra_lore Item.tag.AttributeModifiers[] run function general:extra_lore/attributes/vanilla
execute unless data storage general:extra_lore Item.tag.durability run data modify storage general:extra_lore Item.tag.durability.max set from storage general:extra_lore tag.Damage
execute store result score $durability.capacity general.extra_lore run data get storage general:extra_lore tag.Damage
execute store result score $durability.max general.extra_lore run data get storage general:extra_lore Item.tag.durability.max
execute if data storage general:extra_lore Item.tag.durability.current store result score $durability.current general.extra_lore run data get storage general:extra_lore Item.tag.durability.current
execute unless data storage general:extra_lore Item.tag.durability.current store result score $durability.current general.extra_lore run data get storage general:extra_lore Item.tag.Damage
execute unless data storage general:extra_lore Item.tag.durability.current run scoreboard players operation $durability.current general.extra_lore -= $durability.max general.extra_lore
execute unless data storage general:extra_lore Item.tag.durability.current run scoreboard players operation $durability.current general.extra_lore *= $-1 general.const
execute unless data storage general:extra_lore Item.tag.durability.current store result storage general:extra_lore Item.tag.durability.current int 1 run scoreboard players get $durability.current general.extra_lore
scoreboard players operation $durability.ratio general.extra_lore = $durability.current general.extra_lore
scoreboard players operation $durability.ratio general.extra_lore *= $durability.capacity general.extra_lore
scoreboard players operation $durability.ratio general.extra_lore /= $durability.max general.extra_lore
scoreboard players operation $durability.ratio general.extra_lore -= $durability.capacity general.extra_lore
scoreboard players operation $durability.ratio general.extra_lore *= $-1 general.const
execute store result storage general:extra_lore Item.tag.Damage int 1 run scoreboard players get $durability.ratio general.extra_lore
function general:extra_lore/durability_append with storage general:extra_lore Item.tag.durability
