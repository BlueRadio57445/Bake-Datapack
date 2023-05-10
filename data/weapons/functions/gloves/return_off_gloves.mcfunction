scoreboard players set @s weapons.gloves.holding 0
execute unless predicate weapons:gloves/hold_loaded_gloves run function weapons:gloves/store_offhand
execute if predicate weapons:gloves/hold_loaded_gloves run item modify entity @s weapon.mainhand weapons:gloves/update_loaded
clear @s arrow{gloves:2b}
item replace entity @s weapon.offhand with arrow{gloves:2b} 1
scoreboard players set @s weapons.gloves.holding 1
