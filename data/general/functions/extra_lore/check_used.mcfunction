data modify storage general:extra_lore Items set value []
data modify storage general:extra_lore Items append from entity @s Inventory[{tag:{DurabilityUpdate:1b}}]
execute if data storage general:extra_lore Items[] run function general:extra_lore/find_used
advancement revoke @s only general:extra_lore/durability_changed