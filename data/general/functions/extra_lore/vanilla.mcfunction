$data modify storage general:extra_lore VanillaData set value $(components)
execute unless data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[] if data storage general:extra_lore VanillaData."minecraft:attribute_modifiers".modifiers[] run function general:extra_lore/attributes/vanilla
execute unless data storage general:extra_lore Item.components."minecraft:max_damage" if data storage general:extra_lore VanillaData."minecraft:damage" run function general:extra_lore/durability/vanilla
