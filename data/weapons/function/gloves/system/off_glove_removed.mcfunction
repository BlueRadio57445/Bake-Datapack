scoreboard players set @s weapons.gloves.holding 0
function weapons:gloves/system/return_offhand_moved
execute unless predicate weapons:gloves/system/holding_off_glove run function weapons:gloves/system/store_offhand
clear @s minecraft:arrow[minecraft:custom_data~{gloves:{}}]
function weapons:gloves/system/replace_off_glove
scoreboard players set @s weapons.gloves.holding 1
advancement revoke @s only weapons:gloves/system/off_glove_removed
