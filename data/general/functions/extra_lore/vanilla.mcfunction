$data modify storage general:extra_lore VanillaData set value $(components)
execute if data storage general:extra_lore VanillaData."minecraft:attribute_modifiers".modifiers[] unless data storage general:extra_lore Item.tag.AttributeModifiers[] run function general:extra_lore/attributes/vanilla
data modify storage general:extra_lore Item.components."minecraft:custom_data".vanilla_max_damage set from storage general:extra_lore VanillaData."minecraft:damage"
execute if data storage general:extra_lore VanillaData."minecraft:damage" run function general:extra_lore/durability/update_vanilla
