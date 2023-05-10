clear @s arrow{gloves:2b}
execute if predicate weapons:gloves/hold_main_gloves run loot replace entity @s weapon.offhand 1 loot weapons:gloves/off_gloves

advancement revoke @s only weapons:gloves/off_gloves_gotten
