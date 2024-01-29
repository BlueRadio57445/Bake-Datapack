scoreboard players set @s weapons.gloves.holding 0
loot replace entity @s weapon.offhand 1 loot weapons:gloves/off_gloves
scoreboard players operation @s weapons.gloves.slot = $temp weapons.gloves.slot
scoreboard players set @s weapons.gloves.holding 1
