scoreboard players set @s weapons.gloves.holding 0
clear @s minecraft:arrow[minecraft:custom_data~{gloves:{}}]
execute if predicate weapons:gloves/system/holding_main_glove run function weapons:gloves/system/replace_off_glove
execute if predicate weapons:gloves/system/holding_main_glove run scoreboard players set @s weapons.gloves.holding 1
advancement revoke @s only weapons:gloves/system/off_glove_gotten
