$data modify storage general:extra_lore VanillaData set value $(components)
execute unless data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[] if data storage general:extra_lore VanillaData."minecraft:attribute_modifiers".modifiers[] run data modify storage general:extra_lore Item.components."minecraft:attribute_modifiers" set from storage general:extra_lore VanillaData."minecraft:attribute_modifiers"
execute unless data storage general:extra_lore Item.components."minecraft:max_damage" if data storage general:extra_lore VanillaData."minecraft:damage" run data modify storage general:extra_lore Item.components."minecraft:max_damage" set from storage general:extra_lore VanillaData."minecraft:damage"

