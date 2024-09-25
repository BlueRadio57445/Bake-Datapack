execute store result score $temp weapons.gloves.amount if items entity @s container.* minecraft:crossbow[minecraft:custom_data~{gloves:{}}]
execute if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_data~{gloves:{}}] run scoreboard players add $temp weapons.gloves.amount 1
execute unless score @s weapons.gloves.holding matches 0 if score @s weapons.gloves.amount = $temp weapons.gloves.amount run function weapons:gloves/system/glove_changed
execute if score @s weapons.gloves.holding matches 0 run function weapons:gloves/system/glove_changed
scoreboard players operation @s weapons.gloves.amount = $temp weapons.gloves.amount
advancement revoke @s only weapons:gloves/system/glove_updated
