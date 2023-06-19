function general:player_data/select
data modify storage general:player_data Data[{selected:1b}].Inventory set from entity @s Inventory
advancement revoke @s only general:inventory_changed
