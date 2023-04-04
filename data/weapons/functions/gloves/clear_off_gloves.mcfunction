data remove storage gloves return
data modify storage gloves return set from entity @s Inventory[{id:"minecraft:arrow",tag:{gloves:2b}}].tag.offhand
execute store result score $temp weapons.gloves.holding run clear @s arrow{gloves:2b}
execute if score $temp weapons.gloves.holding matches 2.. if data storage gloves return run function weapons:gloves/return_offhand3

advancement revoke @s only weapons:gloves/off_gloves_gotten
