data modify storage general:extra_lore Items set value []
data modify storage general:extra_lore Items append from entity @s Inventory[{tag:{LoreUpdate:1b}}]
execute if data storage general:extra_lore Items[] run function general:extra_lore/update_new with storage general:extra_lore Items[-1]
advancement revoke @s only general:extra_lore/new
