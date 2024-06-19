data modify storage general:extra_lore Items set value []
data modify storage general:extra_lore Items append from entity @s Inventory[{components:{"minecraft:custom_data":{durability_update:{}}}}]
execute if data storage general:extra_lore Items[] run function general:extra_lore/find_used
advancement revoke @s only general:extra_lore/durability_changed durability_changed
advancement revoke @s only general:extra_lore/trident_pickup trident_pickup
