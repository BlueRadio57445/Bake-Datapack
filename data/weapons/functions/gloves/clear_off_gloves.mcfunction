clear @s arrow{gloves:2b}
execute if predicate weapons:gloves/hold_main_gloves run item replace entity @s weapon.offhand with arrow{gloves:2b}

advancement revoke @s only weapons:gloves/off_gloves_gotten
