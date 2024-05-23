execute unless score $update_mode general.extra_lore matches 0.. run scoreboard players set $update_mode general.extra_lore 0
data modify storage general:extra_lore Item set from storage general:extra_lore Items[-1]
execute store result score $slot general.extra_lore run data get storage general:extra_lore Item.Slot
execute unless data storage general:extra_lore Item.components."minecraft:custom_data".original_lore if data storage general:extra_lore Item.components."minecraft:lore" run data modify storage general:extra_lore Item.components."minecraft:custom_data".original_lore set from storage general:extra_lore Item.components."minecraft:lore"
execute unless data storage general:extra_lore Item.components."minecraft:custom_data".original_lore unless data storage general:extra_lore Item.components."minecraft:lore" run data modify storage general:extra_lore Item.components."minecraft:custom_data".original_lore set value []
data modify storage general:extra_lore Item.components."minecraft:lore" set from storage general:extra_lore Item.components."minecraft:custom_data".original_lore
$execute if data storage general:extra_lore equipments[{id:"$(id)"}] run function general:extra_lore/vanilla with storage general:extra_lore equipments[{id:"$(id)"}]
execute if data storage general:extra_lore Item.components."minecraft:attribute_modifiers".modifiers[] run function general:extra_lore/attributes/main
execute if data storage general:extra_lore Item.components."minecraft:max_damage" run function general:extra_lore/durability/update
data remove storage general:extra_lore Item.components."minecraft:custom_data".lore_update
execute if score $update_mode general.extra_lore matches 0 run function general:extra_lore/replace
execute if score $update_mode general.extra_lore matches 1 run data modify block 0 16 0 Items append from storage general:extra_lore Item
data remove storage general:extra_lore Items[-1]
execute unless data storage general:extra_lore Items[] run scoreboard players reset $update_mode general.extra_lore
execute if data storage general:extra_lore Items[] run function general:extra_lore/update_new with storage general:extra_lore Items[-1]
