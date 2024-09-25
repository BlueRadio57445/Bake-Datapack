scoreboard players set @s weapons.gloves.holding 0
scoreboard players set @s weapons.gloves.amount 0
clear @s minecraft:arrow[minecraft:custom_data~{gloves:{}}]
function weapons:gloves/system/return_offhand_swapped
advancement revoke @s only weapons:gloves/system/glove_swapped
