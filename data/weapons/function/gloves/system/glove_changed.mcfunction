scoreboard players set @s weapons.gloves.holding 0
execute store result score @s weapons.gloves.amount if items entity @s container.* minecraft:crossbow[minecraft:custom_data~{gloves:{}}]
execute if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_data~{gloves:{}}] run scoreboard players add @s weapons.gloves.amount 1
execute unless predicate weapons:gloves/system/holding_off_glove run function weapons:gloves/system/store_offhand
function weapons:gloves/system/replace_off_glove
scoreboard players set @s weapons.gloves.holding 1
