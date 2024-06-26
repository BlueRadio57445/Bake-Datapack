scoreboard players reset * general.extra_lore.modifier_type
data modify storage general:extra_lore AttributeModifiers set from storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers
data modify storage general:extra_lore Attributes set value []

execute if score $is_attribute_tool general.extra_lore matches 1 if data storage general:extra_lore AttributeModifiers[{type:"minecraft:generic.attack_damage",slot:"mainhand",operation:"add_value"}] run function general:extra_lore/attributes/set_default {name:"generic.attack_damage",slot:"mainhand"}
execute if score $is_attribute_tool general.extra_lore matches 1 if data storage general:extra_lore AttributeModifiers[{type:"minecraft:generic.attack_speed",slot:"mainhand",operation:"add_value"}] run function general:extra_lore/attributes/set_default {name:"generic.attack_speed",slot:"mainhand"}
$execute if score $is_armor general.extra_lore matches 1 if data storage general:extra_lore AttributeModifiers[{type:"minecraft:generic.armor",slot:"$(slot)",operation:"add_value"}] run function general:extra_lore/attributes/set_default {name:"generic.armor",slot:"$(slot)"}
$execute if score $is_armor general.extra_lore matches 1 if data storage general:extra_lore AttributeModifiers[{type:"minecraft:generic.armor_toughness",slot:"$(slot)",operation:"add_value"}] run function general:extra_lore/attributes/set_default {name:"generic.armor_toughness",slot:"$(slot)"}
$execute if score $is_armor general.extra_lore matches 1 if data storage general:extra_lore AttributeModifiers[{type:"minecraft:generic.knockback_resistance",slot:"$(slot)",operation:"add_value"}] run function general:extra_lore/attributes/set_default {name:"generic.knockback_resistance",slot:"$(slot)"}

execute if data storage general:extra_lore AttributeModifiers[{slot:"head"}] run data modify storage general:extra_lore AttributeModifiers[{slot:"head"}].slot set value "armor"
execute if data storage general:extra_lore AttributeModifiers[{slot:"chest"}] run data modify storage general:extra_lore AttributeModifiers[{slot:"chest"}].slot set value "armor"
execute if data storage general:extra_lore AttributeModifiers[{slot:"legs"}] run data modify storage general:extra_lore AttributeModifiers[{slot:"legs"}].slot set value "armor"
execute if data storage general:extra_lore AttributeModifiers[{slot:"feet"}] run data modify storage general:extra_lore AttributeModifiers[{slot:"feet"}].slot set value "armor"
execute if data storage general:extra_lore AttributeModifiers[{slot:"body"}] run data modify storage general:extra_lore AttributeModifiers[{slot:"body"}].slot set value "any"

execute if data storage general:extra_lore Item.components."minecraft:custom_data".sharpened run function general:extra_lore/attributes/custom/whetstone with storage general:extra_lore Item.components."minecraft:custom_data".sharpened

execute if data storage general:extra_lore AttributeModifiers[{slot:"hand"}] run function general:extra_lore/attributes/set_addition {slot:"hand"}
execute if data storage general:extra_lore AttributeModifiers[{slot:"mainhand"}] run function general:extra_lore/attributes/set_addition {slot:"mainhand"}
execute if data storage general:extra_lore AttributeModifiers[{slot:"offhand"}] run function general:extra_lore/attributes/set_addition {slot:"offhand"}
execute if data storage general:extra_lore AttributeModifiers[{slot:"armor"}] run function general:extra_lore/attributes/set_addition {slot:"armor"}
execute if data storage general:extra_lore AttributeModifiers[{slot:"any"}] run function general:extra_lore/attributes/set_addition {slot:"any"}

data modify storage general:extra_lore Item.components."minecraft:attribute_modifiers".show_in_tooltip set value 0b
