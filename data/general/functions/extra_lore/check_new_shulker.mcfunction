scoreboard players set $update_mode general.extra_lore 1
data modify storage general:extra_lore Items set value []
data modify storage general:extra_lore Items append from block 0 16 0 Items[{tag:{LoreUpdate:1b}}]
execute if data storage general:extra_lore Items[] run function general:extra_lore/update_new with storage general:extra_lore Items[-1]
