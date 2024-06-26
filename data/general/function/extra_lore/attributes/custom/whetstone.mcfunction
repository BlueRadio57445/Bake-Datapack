$function general:extra_lore/attributes/custom/times_left {time:"$(times_left)"}
data modify storage general:extra_lore AttributeModifiers[{id:"items:attack_damage.whetstone"}].extra_text set from storage general:extra_lore attribute_extra
data modify storage general:extra_lore AttributeModifiers[{id:"items:attack_damage.whetstone"}].extra_command set value "execute store result storage general:extra_lore Item.components.minecraft:custom_data.sharpened.lore_index int 1 if data storage general:extra_lore Item.components.minecraft:lore[]"
