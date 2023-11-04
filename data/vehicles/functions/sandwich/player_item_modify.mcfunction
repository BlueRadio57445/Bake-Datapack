data modify storage vehicles:sandwich Item set from entity @s Inventory[{tag:{sandwich:{unfolded:1b}}}]
execute store result score $temp vehicles.state run data get storage vehicles:sandwich Item.Slot
loot replace block 0 16 0 container.1 loot items:gadget/sandwich/bag_stuffed
data modify storage vehicles:sandwich Item.Slot set value 0b
data remove storage vehicles:sandwich Item.tag.sandwich.unfolded
data modify storage vehicles:sandwich Item.tag.display.Lore set from block 0 16 0 Items[{Slot:1b}].tag.display.Lore
data modify block 0 16 0 Items append from storage vehicles:sandwich Item
execute if score $temp vehicles.state matches 0 run item replace entity @s container.0 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 1 run item replace entity @s container.1 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 2 run item replace entity @s container.2 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 3 run item replace entity @s container.3 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 4 run item replace entity @s container.4 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 5 run item replace entity @s container.5 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 6 run item replace entity @s container.6 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 7 run item replace entity @s container.7 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 8 run item replace entity @s container.8 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 9 run item replace entity @s container.9 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 10 run item replace entity @s container.10 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 11 run item replace entity @s container.11 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 12 run item replace entity @s container.12 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 13 run item replace entity @s container.13 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 14 run item replace entity @s container.14 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 15 run item replace entity @s container.15 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 16 run item replace entity @s container.16 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 17 run item replace entity @s container.17 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 18 run item replace entity @s container.18 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 19 run item replace entity @s container.19 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 20 run item replace entity @s container.20 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 21 run item replace entity @s container.21 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 22 run item replace entity @s container.22 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 23 run item replace entity @s container.23 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 24 run item replace entity @s container.24 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 25 run item replace entity @s container.25 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 26 run item replace entity @s container.26 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 27 run item replace entity @s container.27 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 28 run item replace entity @s container.28 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 29 run item replace entity @s container.29 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 30 run item replace entity @s container.30 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 31 run item replace entity @s container.31 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 32 run item replace entity @s container.32 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 33 run item replace entity @s container.33 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 34 run item replace entity @s container.34 from block 0 16 0 container.0
execute if score $temp vehicles.state matches 35 run item replace entity @s container.35 from block 0 16 0 container.0
data remove block 0 16 0 Items[]
advancement revoke @s only vehicles:sandwich/folded
execute if data entity @s Inventory[{tag:{sandwich:{unfolded:1b}}}] run function vehicles:sandwich/player_item_modify
