scoreboard players set @s weapons.gloves.holding 0
execute unless predicate weapons:gloves/system/hold_loaded_gloves run function weapons:gloves/system/store_offhand
execute if predicate weapons:gloves/system/hold_loaded_gloves run item modify entity @s weapon.mainhand weapons:gloves/update_loaded
clear @s arrow{gloves:2b}
loot replace entity @s weapon.offhand 1 loot weapons:gloves/off_gloves
execute store result score @s weapons.gloves.slot run data get entity @s SelectedItemSlot
scoreboard players set @s weapons.gloves.holding 1
