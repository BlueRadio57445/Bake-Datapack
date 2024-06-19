scoreboard players set $update_mode general.extra_lore 1
data modify storage general:extra_lore Items set value []
data modify storage general:extra_lore Items append from block 0 16 0 Items[{components:{"minecraft:custom_data":{lore_update:{}}}}]
execute if data storage general:extra_lore Items[] run function general:extra_lore/update_new with storage general:extra_lore Items[-1]
