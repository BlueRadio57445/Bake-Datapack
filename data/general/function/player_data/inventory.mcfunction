function general:player_data/select
data modify storage general:player_data Data[{selected:1b}].Inventory set from entity @s Inventory
execute if predicate weapons:gloves/system/holding_main_glove store result score @s weapons.gloves.amount if items entity @s container.* minecraft:crossbow[minecraft:custom_data~{gloves:{}}]
advancement revoke @s only general:inventory_changed inventory_changed
