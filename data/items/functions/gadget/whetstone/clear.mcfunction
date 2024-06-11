data remove storage items:whetstone weapon.components.minecraft:custom_data.sharpened
data remove storage items:whetstone weapon.components.minecraft:attribute_modifiers.modifiers[{name:"attack_damage.whetstone"}]
execute unless data storage items:whetstone weapon.components.attribute_modifiers.modifiers[] run data remove storage items:whetstone weapon.components.attribute_modifiers.modifiers
data modify storage items:whetstone weapon.components.minecraft:custom_data.lore_update set value {}
data modify storage items:whetstone weapon.Slot set value 0b
data modify block 0 16 0 Items append from storage items:whetstone weapon
item replace entity @s weapon.mainhand from block 0 16 0 container.0
data modify block 0 16 0 Items set value []
