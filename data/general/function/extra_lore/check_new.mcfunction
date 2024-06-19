data modify storage general:extra_lore Items set value []
data modify storage general:extra_lore Items append from entity @s Inventory[{components:{"minecraft:custom_data":{lore_update:{}}}}]
execute if data storage general:extra_lore Items[] run function general:extra_lore/update_new with storage general:extra_lore Items[-1]
advancement revoke @s only general:extra_lore/new need_update
