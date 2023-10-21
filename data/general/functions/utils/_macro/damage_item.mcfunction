$execute store success score $item_mode general.utils store result score $durability.max general.extra_lore run data get storage general:extra_lore has_durability[{id:"$(id)"}].tag.Damage
execute if data storage general:extra_lore Item.tag.Unbreakable run scoreboard players set $item_mode general.utils 0
