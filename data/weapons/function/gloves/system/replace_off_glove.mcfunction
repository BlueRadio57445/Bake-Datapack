data modify storage weapons:gloves temp set value {custom_model_data:0,enchantments:{}}
data modify storage weapons:gloves temp.custom_model_data set from entity @s SelectedItem.components.minecraft:custom_model_data
data modify storage weapons:gloves temp.enchantments set from entity @s SelectedItem.components.minecraft:enchantments
data modify block 0 16 0 Items set value [{id:"minecraft:arrow",count:1,Slot:0b}]
function weapons:gloves/system/modify_off_glove with storage weapons:gloves temp
item replace entity @s weapon.offhand from block 0 16 0 container.0
data remove block 0 16 0 Items[]
