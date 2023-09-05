execute store result score $temp weapons.gloves.slot run data get entity @s SelectedItemSlot
execute unless score @s weapons.gloves.slot = $temp weapons.gloves.slot run function weapons:gloves/system/switch_gloves
