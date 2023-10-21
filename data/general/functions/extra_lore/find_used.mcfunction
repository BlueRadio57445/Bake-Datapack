#declare score_holder $durability.damage
#declare score_holder $durability.ratio

execute store result score $durability.damage general.extra_lore run data get storage general:extra_lore Items[-1].tag.Damage
execute store result score $durability.ratio general.extra_lore run data get storage general:extra_lore Items[-1].tag.durability.ratio
execute unless score $durability.damage general.extra_lore = $durability.ratio general.extra_lore run function general:extra_lore/durability/replace
data remove storage general:extra_lore Items[-1]
execute if data storage general:extra_lore Items[] run function general:extra_lore/find_used
